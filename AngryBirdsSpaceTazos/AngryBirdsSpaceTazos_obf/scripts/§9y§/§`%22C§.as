package §9y§
{
   import §7!B§.§@!^§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §`!j§.§3,§;
   import com.rovio.assets.§ !h§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class §`"C§ extends Sprite
   {
      
      private static const §&!q§:Number = 1.5;
      
      private static const §;i§:Number = 1.2;
      
      private static const §;!o§:Number = 1.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&!q§ = 1.5;
            while(true)
            {
               §;i§ = 1.2;
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            §;!o§ = 1;
            if(_loc2_)
            {
               if(_loc2_ || §`"C§)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §;!i§:§3,§;
      
      private var §!!>§:MovieClip;
      
      private var §[!L§:Number;
      
      private var §1!'§:Dictionary;
      
      private var §7`§:Dictionary;
      
      private var §&W§:§5!9§;
      
      private var §?"@§:§5!9§;
      
      private var §-u§:Array;
      
      private var §+!Z§:Number;
      
      private var §""%§:Number;
      
      private var §"&§:Number;
      
      private var §7"&§:Number;
      
      private var §1_§:GlowFilter;
      
      private var §9n§:GlowFilter;
      
      private var §;"A§:Boolean = true;
      
      private var §;+§:Number = 0;
      
      private var §""+§:Number = 1000;
      
      public function §`"C§(param1:§3,§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            this.§;!i§ = param1;
            do
            {
               this.init();
            }
            while(_loc2_);
            
         }
         while(_loc2_ && param1);
         
      }
      
      public function §?U§() : Number
      {
         return this.§!!>§.layer1.scaleX;
      }
      
      private function init() : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 468
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function refresh(param1:Boolean = false) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:§><§ = null;
         var _loc3_:§><§ = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         if(_loc10_ || _loc2_)
         {
            if(§@!^§.§2j§.§8B§)
            {
               loop0:
               while(true)
               {
                  this.§!!>§.planetLock.visible = true;
                  loop1:
                  while(true)
                  {
                     (this.§!!>§.starText as TextField).visible = true;
                     addr424:
                     while(this.§!!>§.starTextBg)
                     {
                        if(_loc11_ && _loc2_)
                        {
                           break;
                        }
                        addr415:
                        if(!(_loc11_ && param1))
                        {
                           if(!(_loc11_ && _loc3_))
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                     §§push(this.§;!i§);
                     if(!_loc11_)
                     {
                        §§push(§§pop().name);
                        if(!(_loc11_ && param1))
                        {
                           var _loc8_:* = §§pop();
                           if(_loc10_ || _loc3_)
                           {
                              §§push("1");
                              if(!_loc11_)
                              {
                                 §§push(_loc8_);
                                 if(_loc10_ || _loc2_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc10_ || _loc2_)
                                       {
                                          addr477:
                                          §§push(0);
                                          if(!(_loc10_ || this))
                                          {
                                             addr508:
                                          }
                                          addr548:
                                          if(!(_loc11_ && _loc3_))
                                          {
                                             loop77:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   this.§!!>§.planetLock.visible = false;
                                                   if(!_loc11_)
                                                   {
                                                      (this.§!!>§.starText as TextField).visible = false;
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         addr709:
                                                         §§push(0);
                                                         if(_loc10_ || param1)
                                                         {
                                                            break;
                                                         }
                                                         addr835:
                                                         _loc8_ = §§pop();
                                                         if(!_loc11_)
                                                         {
                                                            var _loc9_:* = this.§1!'§;
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc9_,_loc8_));
                                                               addr1541:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     break loop5;
                                                                  }
                                                                  _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                                  if(_loc10_)
                                                                  {
                                                                     if(!§@!^§.§2j§.§8B§)
                                                                     {
                                                                        _loc3_.§@v§.addEventListener(MouseEvent.MOUSE_OVER,this.§[!w§);
                                                                        loop6:
                                                                        while(!(_loc11_ && param1))
                                                                        {
                                                                           _loc3_.§@v§.addEventListener(MouseEvent.MOUSE_OUT,this.§05§);
                                                                           loop7:
                                                                           for(; _loc10_; while(true)
                                                                           {
                                                                              if(!(_loc11_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc11_ && this))
                                                                                 {
                                                                                    if(_loc10_ || param1)
                                                                                    {
                                                                                       (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star1 as MovieClip).visible = false;
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr1116);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop7;
                                                                           },§§goto(addr1101))
                                                                           {
                                                                              _loc3_.§@v§.addEventListener(MouseEvent.MOUSE_UP,this.§6!h§);
                                                                              loop8:
                                                                              while(!_loc11_)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    (this.§!!>§.layer1["level" + _loc3_.levelNum] as SimpleButton).visible = true;
                                                                                    loop9:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   (this.§!!>§.layer1["lock" + (_loc3_.levelNum + 1)] as SimpleButton).visible = false;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         if(!(_loc11_ && this))
                                                                                                         {
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               if(!(_loc11_ && param1))
                                                                                                               {
                                                                                                                  (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star0 as MovieClip).visible = false;
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               addr1444:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(int((§ !g§.§;!'§ as §`Y§).§]]§.§,R§(_loc3_.levelName,(§ !g§.§;!'§ as §`Y§).§]]§.getScoreForLevel(_loc3_.levelName))));
                                                                                                                  loop51:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!(_loc11_ && _loc3_))
                                                                                                                     {
                                                                                                                        _loc6_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(3);
                                                                                                                        }
                                                                                                                        addr1413:
                                                                                                                     }
                                                                                                                     loop22:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop() == §§pop())
                                                                                                                        {
                                                                                                                           loop15:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star3 as MovieClip).visible = true;
                                                                                                                              addr1428:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 loop16:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    loop17:
                                                                                                                                    while(_loc10_ || this)
                                                                                                                                    {
                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc10_ || param1)
                                                                                                                                          {
                                                                                                                                             loop18:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                if(!(_loc10_ || _loc3_))
                                                                                                                                                {
                                                                                                                                                   continue loop17;
                                                                                                                                                }
                                                                                                                                                if(_loc11_ && this)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(§§pop() >= this.§-u§.length)
                                                                                                                                                {
                                                                                                                                                   break loop9;
                                                                                                                                                }
                                                                                                                                                addr1261:
                                                                                                                                                this.§-u§[_loc7_].alpha = 0;
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc7_++;
                                                                                                                                                   continue loop18;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             loop19:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc11_)
                                                                                                                                                {
                                                                                                                                                   §§push(1);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc10_ || param1))
                                                                                                                                                      {
                                                                                                                                                         continue loop22;
                                                                                                                                                      }
                                                                                                                                                      if(§§pop() != §§pop())
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                         break loop17;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc11_)
                                                                                                                                                      {
                                                                                                                                                         (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star1 as MovieClip).visible = true;
                                                                                                                                                         addr1351:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc10_ || this))
                                                                                                                                                            {
                                                                                                                                                               break loop19;
                                                                                                                                                            }
                                                                                                                                                            continue loop16;
                                                                                                                                                         }
                                                                                                                                                         addr1351:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1351);
                                                                                                                                                      addr1291:
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(_loc11_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc11_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() != §§pop())
                                                                                                                                                         {
                                                                                                                                                            continue loop16;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star0 as MovieClip).visible = true;
                                                                                                                                                            addr1320:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               continue loop16;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() != §§pop())
                                                                                                                                                            {
                                                                                                                                                               continue loop19;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star2 as MovieClip).visible = true;
                                                                                                                                                               break loop19;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1371:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop22;
                                                                                                                                                }
                                                                                                                                                §§goto(addr1413);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop16;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1320);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc11_ && this)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc10_ || _loc2_))
                                                                                                                                             {
                                                                                                                                                continue loop51;
                                                                                                                                             }
                                                                                                                                             continue loop22;
                                                                                                                                          }
                                                                                                                                          continue loop15;
                                                                                                                                          addr1363:
                                                                                                                                       }
                                                                                                                                       §§goto(addr1291);
                                                                                                                                       §§goto(addr1371);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr1050:
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr1415:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(_loc6_);
                                                                                                                        }
                                                                                                                        §§goto(addr1363);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1307);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   loop40:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star1 as MovieClip).visible = false;
                                                                                                      addr1116:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc10_ || param1)
                                                                                                         {
                                                                                                            (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star2 as MovieClip).visible = false;
                                                                                                            addr1123:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star3 as MovieClip).visible = false;
                                                                                                               break loop8;
                                                                                                               §§goto(addr1123);
                                                                                                            }
                                                                                                            addr1123:
                                                                                                            §§goto(addr1050);
                                                                                                            addr1101:
                                                                                                         }
                                                                                                         while(_loc11_ && this)
                                                                                                         {
                                                                                                            while(_loc11_ && _loc3_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc3_.§@v§.addEventListener(MouseEvent.MOUSE_OVER,this.§[!w§);
                                                                                                                  addr1509:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc3_.§@v§.addEventListener(MouseEvent.MOUSE_OUT,this.§05§);
                                                                                                                     break loop7;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            (this.§!!>§.layer1["level" + _loc3_.levelNum] as SimpleButton).visible = false;
                                                                                                         }
                                                                                                         addr1189:
                                                                                                         addr1154:
                                                                                                         (this.§!!>§.layer1["lock" + (_loc3_.levelNum + 1)] as SimpleButton).visible = true;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc10_ || _loc2_)
                                                                                                            {
                                                                                                               if(_loc10_ || param1)
                                                                                                               {
                                                                                                                  (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star0 as MovieClip).visible = false;
                                                                                                                  continue loop40;
                                                                                                               }
                                                                                                               addr1248:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc3_.§@v§.removeEventListener(MouseEvent.MOUSE_OUT,this.§05§);
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc3_.§@v§.removeEventListener(MouseEvent.MOUSE_UP,this.§6!h§);
                                                                                                               §§goto(addr1198);
                                                                                                            }
                                                                                                            §§goto(addr1189);
                                                                                                         }
                                                                                                         §§goto(addr1123);
                                                                                                      }
                                                                                                   }
                                                                                                   addr985:
                                                                                                }
                                                                                                §§goto(addr1415);
                                                                                             }
                                                                                             §§goto(addr1351);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§goto(addr1050);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop24:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   if(_loc10_ || this)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   addr1514:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§@!^§.§#^§(_loc3_.levelName));
                                                                                                      if(_loc10_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                      }
                                                                                                      addr1536:
                                                                                                      addr1538:
                                                                                                      while(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               _loc3_.§@v§.removeEventListener(MouseEvent.MOUSE_OVER,this.§[!w§);
                                                                                                               §§goto(addr1248);
                                                                                                            }
                                                                                                            §§goto(addr1502);
                                                                                                         }
                                                                                                      }
                                                                                                      §§pop();
                                                                                                      break loop6;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1509);
                                                                                                addr1476:
                                                                                                while(true)
                                                                                                {
                                                                                                   (this.§!!>§.layer1["level" + _loc3_.levelNum] as SimpleButton).visible = true;
                                                                                                   continue loop24;
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                (this.§!!>§.layer1["lock" + (_loc3_.levelNum + 1)] as SimpleButton).visible = false;
                                                                                                §§goto(addr1444);
                                                                                             }
                                                                                             addr1467:
                                                                                          }
                                                                                          §§goto(addr1050);
                                                                                       }
                                                                                       §§goto(addr1372);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1428);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§goto(addr1476);
                                                                                    }
                                                                                    §§goto(addr1050);
                                                                                 }
                                                                                 §§goto(addr1154);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc3_.§@v§.addEventListener(MouseEvent.MOUSE_UP,this.§6!h§);
                                                                              §§goto(addr1476);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           if(!(_loc10_ || _loc2_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§goto(addr1500);
                                                                           }
                                                                           §§goto(addr1536);
                                                                        }
                                                                     }
                                                                     §§goto(addr1514);
                                                                  }
                                                                  §§goto(addr1467);
                                                               }
                                                            }
                                                            addr1542:
                                                         }
                                                         return;
                                                         addr595:
                                                         addr1543:
                                                      }
                                                      addr834:
                                                      §§goto(addr835);
                                                      §§push(0);
                                                   }
                                                   else
                                                   {
                                                      addr708:
                                                      loop2:
                                                      while(true)
                                                      {
                                                         addr694:
                                                         while(true)
                                                         {
                                                            (this.§!!>§.starText as TextField).visible = false;
                                                            addr702:
                                                            while(this.§!!>§.starTextBg)
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               if(!_loc10_)
                                                               {
                                                                  continue;
                                                               }
                                                               while(true)
                                                               {
                                                                  (this.§!!>§.starTextBg as MovieClip).visible = false;
                                                                  if(!_loc10_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               §§goto(addr835);
                                                            }
                                                         }
                                                      }
                                                      addr708:
                                                   }
                                                   §§goto(addr709);
                                                case 1:
                                                   addr344:
                                                   §§push(int(§@!^§.§2j§.starsNeededToUnlockEpisode2));
                                                   loop68:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      addr347:
                                                      addr297:
                                                      §§push(§@!^§.§2j§);
                                                      while(true)
                                                      {
                                                         §§push(§§pop().stars);
                                                         if(_loc11_ && this)
                                                         {
                                                            break loop77;
                                                         }
                                                         continue loop68;
                                                      }
                                                   }
                                                   break;
                                                case 2:
                                                   §§push(§@!^§.§2j§);
                                                   loop71:
                                                   for(; _loc10_; loop72:
                                                   while(true)
                                                   {
                                                      §§push(§@!^§.§2j§);
                                                      if(!_loc10_)
                                                      {
                                                         continue loop71;
                                                      }
                                                      §§push(§§pop().stars);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(_loc10_)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(!(_loc11_ && this))
                                                               {
                                                                  if(!this.§!!>§.planetLock.visible)
                                                                  {
                                                                     if(!(_loc11_ && param1))
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           this.§;"A§ = true;
                                                                           addr179:
                                                                           if(!(_loc11_ && param1))
                                                                           {
                                                                              addr125:
                                                                              this.§!!>§.planetLock.visible = false;
                                                                              while(true)
                                                                              {
                                                                                 (this.§!!>§.starText as TextField).text = _loc5_ + "/" + _loc5_;
                                                                                 do
                                                                                 {
                                                                                    (this.§!!>§.starText as TextField).visible = false;
                                                                                    if(_loc10_ || _loc2_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr708);
                                                                                 }
                                                                                 while(_loc11_);
                                                                                 
                                                                                 addr111:
                                                                                 while(this.§!!>§.starTextBg)
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       continue loop72;
                                                                                    }
                                                                                    §§goto(addr834);
                                                                                    §§goto(addr111);
                                                                                 }
                                                                                 addr435:
                                                                                 §§goto(addr709);
                                                                              }
                                                                              addr131:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr232);
                                                                           }
                                                                           §§goto(addr709);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr347);
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     this.§;"A§ = false;
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           §§goto(addr125);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr179);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr676);
                                                               }
                                                               §§goto(addr834);
                                                            }
                                                            else
                                                            {
                                                               (this.§!!>§.starText as TextField).text = §@!^§.§2j§.stars + "/" + _loc5_;
                                                               if(!(_loc11_ && this))
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr111);
                                                                  }
                                                                  §§goto(addr435);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr559);
                                                               }
                                                            }
                                                            §§goto(addr709);
                                                         }
                                                         §§goto(addr313);
                                                      }
                                                      else
                                                      {
                                                         addr658:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               this.§!!>§.layer1.level0.visible = true;
                                                               if(!(_loc11_ && this))
                                                               {
                                                                  §§goto(addr611);
                                                               }
                                                               break;
                                                            case 1:
                                                               this.§!!>§.layer1.level1.visible = true;
                                                               if(!(_loc11_ && _loc2_))
                                                               {
                                                                  break loop72;
                                                               }
                                                               break;
                                                            case 2:
                                                               this.§!!>§.layer1.level2.visible = true;
                                                               if(!(_loc11_ && this))
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break loop72;
                                                                  }
                                                                  §§goto(addr578);
                                                               }
                                                               §§goto(addr676);
                                                         }
                                                         §§goto(addr709);
                                                      }
                                                   },§§goto(addr273))
                                                   {
                                                      if(_loc10_ || this)
                                                      {
                                                         §§push(§§pop().starsNeededToUnlockEpisode3);
                                                         if(_loc10_)
                                                         {
                                                            if(_loc10_ || this)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(_loc10_)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  continue;
                                                               }
                                                               §§goto(addr709);
                                                            }
                                                         }
                                                         break loop77;
                                                      }
                                                      §§goto(addr344);
                                                      §§goto(addr344);
                                                   }
                                                   §§goto(addr297);
                                                default:
                                                   §§goto(addr709);
                                             }
                                             addr717:
                                             _loc8_ = §§pop();
                                             if(!(_loc11_ && this))
                                             {
                                                _loc9_ = this.§7`§;
                                                loop59:
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc9_,_loc8_));
                                                   if(!_loc11_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc10_ || param1)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               if(_loc10_ || _loc3_)
                                                               {
                                                                  §§goto(addr834);
                                                               }
                                                               §§goto(addr709);
                                                            }
                                                            §§goto(addr1543);
                                                         }
                                                         §§goto(addr1542);
                                                      }
                                                      else
                                                      {
                                                         _loc2_ = §§nextvalue(_loc8_,_loc9_);
                                                         if(_loc10_)
                                                         {
                                                            §§push(§@!^§.§#^§(_loc2_.levelName));
                                                            loop60:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop61:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc11_ && param1))
                                                                           {
                                                                              _loc2_.§@v§.removeEventListener(MouseEvent.MOUSE_UP,this.§!!H§);
                                                                              break;
                                                                           }
                                                                           break;
                                                                        }
                                                                        _loc2_.§@v§.addEventListener(MouseEvent.MOUSE_UP,this.§!!H§);
                                                                        if(_loc11_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc10_)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              continue loop59;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(param1);
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              if(!(_loc11_ && param1))
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop60;
                                                                              }
                                                                              addr810:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                              }
                                                                           }
                                                                           continue loop61;
                                                                           addr755:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr755);
                                                                        }
                                                                     }
                                                                     continue loop59;
                                                                     addr786:
                                                                     addr802:
                                                                  }
                                                                  §§goto(addr810);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr802);
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr1541);
                                             }
                                             §§goto(addr709);
                                          }
                                          §§goto(addr658);
                                       }
                                       else
                                       {
                                          addr500:
                                          §§push(1);
                                          if(_loc10_ || _loc2_)
                                          {
                                             §§goto(addr508);
                                          }
                                          else
                                          {
                                             addr655:
                                             if(_loc10_)
                                             {
                                                §§goto(addr658);
                                             }
                                             addr634:
                                          }
                                          §§goto(addr717);
                                       }
                                    }
                                    else
                                    {
                                       §§push("2");
                                       if(_loc10_)
                                       {
                                          §§push(_loc8_);
                                          if(_loc10_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc10_ || this)
                                                {
                                                   §§goto(addr500);
                                                }
                                                else
                                                {
                                                   addr628:
                                                   if("1" === _loc8_)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         addr631:
                                                         §§push(0);
                                                         if(!_loc11_)
                                                         {
                                                            §§goto(addr634);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr640:
                                                         §§push(1);
                                                         if(!_loc10_)
                                                         {
                                                            addr650:
                                                         }
                                                      }
                                                      §§goto(addr655);
                                                      §§goto(addr655);
                                                   }
                                                   else
                                                   {
                                                      addr637:
                                                      if("2" === _loc8_)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            §§goto(addr640);
                                                         }
                                                         else
                                                         {
                                                            addr647:
                                                            §§push(2);
                                                            if(!_loc11_)
                                                            {
                                                               §§goto(addr650);
                                                            }
                                                            §§goto(addr655);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("3");
                                                      }
                                                      §§goto(addr647);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push("3");
                                                if(_loc10_ || _loc3_)
                                                {
                                                   §§push(_loc8_);
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            §§push(2);
                                                            if(_loc10_ || this)
                                                            {
                                                               §§goto(addr548);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr655);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr631);
                                                         }
                                                         §§goto(addr655);
                                                      }
                                                      else
                                                      {
                                                         §§push(3);
                                                         if(!(_loc11_ && param1))
                                                         {
                                                            §§goto(addr548);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr643);
                                                         }
                                                      }
                                                      §§goto(addr643);
                                                   }
                                                   §§goto(addr655);
                                                }
                                                else
                                                {
                                                   addr645:
                                                   §§push(_loc8_);
                                                }
                                                if(§§pop() === §§pop())
                                                {
                                                   §§goto(addr647);
                                                }
                                                else
                                                {
                                                   §§goto(addr655);
                                                   §§push(3);
                                                }
                                             }
                                             §§goto(addr655);
                                          }
                                       }
                                       §§goto(addr637);
                                    }
                                    §§goto(addr655);
                                 }
                              }
                              §§goto(addr628);
                           }
                           §§goto(addr477);
                        }
                        else
                        {
                           addr618:
                           _loc8_ = §§pop();
                           if(_loc10_ || this)
                           {
                              §§goto(addr628);
                           }
                        }
                        §§goto(addr647);
                     }
                     else
                     {
                        addr617:
                        §§push(§§pop().name);
                     }
                     §§goto(addr618);
                  }
               }
            }
            else
            {
               §§push(this.§;!i§);
            }
            §§goto(addr617);
         }
         §§goto(addr424);
      }
      
      private function §[!w§(param1:MouseEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push((this.§1!'§[param1.currentTarget] as §><§).levelName);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:§><§ = this.§1!'§[param1.currentTarget] as §><§;
         if(!_loc6_)
         {
            §§push(this.§&W§);
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§&W§);
                     addr98:
                     while(true)
                     {
                        §§pop().stop();
                        addr99:
                        while(true)
                        {
                        }
                     }
                  }
                  addr96:
               }
               addr76:
               while(true)
               {
                  this.§&W§ = §!D§.§[!1§.§1"<§(_loc3_.§@v§,{
                     "scaleX":§;i§,
                     "scaleY":§;i§
                  },null,0.1);
               }
            }
            addr94:
         }
         while(true)
         {
            §§push(this.§&W§);
            if(_loc5_ || _loc3_)
            {
               if(_loc5_)
               {
                  §§pop().play();
                  if(_loc6_ && _loc2_)
                  {
                     continue;
                  }
                  if(_loc5_ || _loc3_)
                  {
                     if(_loc5_ || param1)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr76);
                     }
                     else
                     {
                        §§goto(addr96);
                     }
                  }
                  §§goto(addr99);
               }
               else
               {
                  §§goto(addr94);
               }
            }
            §§goto(addr98);
         }
         var _loc4_:int = 0;
         loop6:
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_ || _loc3_)
            {
               if(§§pop() >= this.§-u§.length)
               {
                  loop7:
                  while(!_loc6_)
                  {
                     if(!§@!^§.§2j§.§8B§)
                     {
                        return;
                     }
                     for(; !_loc6_; if(_loc6_ && param1)
                     {
                        continue;
                     })
                     {
                        if(!(_loc5_ || param1))
                        {
                           addr233:
                           this.§-u§[_loc4_].alpha = 0;
                           break loop7;
                        }
                        §§push(this.§?"@§);
                        if(!(_loc6_ && _loc2_))
                        {
                           if(§§pop() != null)
                           {
                              if(_loc5_ || param1)
                              {
                                 §§push(this.§?"@§);
                                 while(true)
                                 {
                                    §§pop().stop();
                                 }
                                 addr212:
                              }
                              while(true)
                              {
                              }
                              addr213:
                           }
                           while(true)
                           {
                              this.§?"@§ = §!D§.§[!1§.§1"<§(this.§-u§[_loc3_.levelNum],{"alpha":1},null,0.5);
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop7;
                                 }
                                 §§push(this.§?"@§);
                                 if(!(_loc6_ && this))
                                 {
                                    continue;
                                 }
                              }
                              §§goto(addr213);
                           }
                           continue;
                        }
                        §§goto(addr212);
                     }
                     continue loop6;
                  }
               }
               else
               {
                  addr220:
                  if(_loc4_ != _loc3_.levelNum)
                  {
                     §§goto(addr233);
                  }
               }
               _loc4_++;
               continue;
            }
            §§goto(addr220);
         }
      }
      
      private function §05§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§><§ = this.§1!'§[param1.currentTarget] as §><§;
         if(!_loc4_)
         {
            §§push(this.§&W§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§&W§);
                     addr72:
                     while(true)
                     {
                        §§pop().stop();
                        addr73:
                        while(true)
                        {
                        }
                     }
                  }
                  addr70:
               }
               addr48:
               while(true)
               {
                  this.§&W§ = §!D§.§[!1§.§1"<§(_loc2_.§@v§,{
                     "scaleX":§;!o§,
                     "scaleY":§;!o§
                  },null,0.1);
                  while(true)
                  {
                     if(_loc5_)
                     {
                        §§push(this.§&W§);
                        if(_loc4_)
                        {
                           break;
                        }
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        §§pop().play();
                        if(_loc4_)
                        {
                           continue;
                        }
                        if(!(_loc5_ || _loc2_))
                        {
                           §§goto(addr73);
                        }
                     }
                     else
                     {
                        §§goto(addr70);
                     }
                  }
                  §§goto(addr72);
               }
            }
         }
         while(false)
         {
            §§goto(addr48);
         }
         var _loc3_:int = 0;
         loop7:
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop() >= this.§-u§.length)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§@!^§.§2j§.§8B§)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           §§push(this.§?"@§);
                           loop8:
                           while(true)
                           {
                              if(§§pop() != null)
                              {
                                 while(true)
                                 {
                                    §§push(this.§?"@§);
                                    addr192:
                                    while(true)
                                    {
                                       §§pop().stop();
                                       addr193:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 addr190:
                              }
                              while(true)
                              {
                                 this.§?"@§ = §!D§.§[!1§.§1"<§(this.§-u§[_loc2_.levelNum],{"alpha":0},null,0.25);
                                 addr154:
                                 while(true)
                                 {
                                    §§push(this.§?"@§);
                                    if(!(_loc5_ || param1))
                                    {
                                       break;
                                    }
                                    continue loop8;
                                 }
                                 §§goto(addr192);
                              }
                              addr130:
                              if(_loc5_ || param1)
                              {
                                 break loop7;
                              }
                              addr196:
                              if(!_loc4_)
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    continue loop7;
                                 }
                                 addr222:
                                 while(true)
                                 {
                                    this.§-u§[_loc3_].alpha = 0;
                                 }
                              }
                              loop16:
                              while(true)
                              {
                                 addr194:
                                 while(true)
                                 {
                                    _loc3_++;
                                    §§goto(addr196);
                                    continue loop16;
                                 }
                                 continue loop7;
                              }
                           }
                        }
                        §§goto(addr193);
                     }
                     break;
                  }
                  §§goto(addr193);
               }
               else
               {
                  addr209:
                  if(_loc3_ != _loc2_.levelNum)
                  {
                     §§goto(addr222);
                  }
               }
               §§goto(addr194);
            }
            §§goto(addr209);
         }
      }
      
      private function §6!h§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push((this.§1!'§[param1.currentTarget] as §><§).levelName);
         if(!(_loc4_ && param1))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            dispatchEvent(new EpisodeButtonEvent(EpisodeButtonEvent.§ for§,_loc2_,(this.§1!'§[param1.currentTarget] as §><§).§@v§.x,(this.§1!'§[param1.currentTarget] as §><§).§@v§.y,this.§1!'§[param1.currentTarget] as §><§));
         }
      }
      
      private function §!!H§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push((this.§7`§[param1.currentTarget] as §><§).levelName);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            dispatchEvent(new EpisodeButtonEvent(EpisodeButtonEvent.§ for§,_loc2_,(this.§7`§[param1.currentTarget] as §><§).§@v§.x,(this.§7`§[param1.currentTarget] as §><§).§@v§.y,this.§7`§[param1.currentTarget] as §><§));
         }
         do
         {
            this.§]"2§(this.§!!>§.starTextBg as MovieClip);
         }
         while(!(_loc3_ || this));
         
      }
      
      private function §]"2§(param1:MovieClip) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§1_§ = new GlowFilter(10618390,0.6,3,3,0,5,true,false);
            if(!(_loc5_ && this))
            {
               this.§9n§ = new GlowFilter(15736864,0.6,7,7,0,5,false,false);
            }
         }
         var _loc2_:§5!9§ = §!D§.§[!1§.§7!$§(§!D§.§[!1§.§1"<§(this.§1_§,{"strength":2},{"strength":0},§&!q§ / 4,§!D§.§!!R§),§!D§.§[!1§.§1"<§(this.§1_§,{"strength":0},{"strength":2},§&!q§ / 4,§!D§.§=!t§),§!D§.§[!1§.§1"<§(this.§1_§,{"strength":2},{"strength":0},§&!q§ / 4,§!D§.§!!R§),§!D§.§[!1§.§1"<§(this.§1_§,{"strength":0},{"strength":2},§&!q§ / 4,§!D§.§=!t§));
         if(_loc4_ || _loc2_)
         {
            _loc2_.play();
         }
         var _loc3_:§5!9§ = §!D§.§[!1§.§7!$§(§!D§.§[!1§.§1"<§(this.§9n§,{"strength":4},{"strength":0},§&!q§ / 4,§!D§.§!!R§),§!D§.§[!1§.§1"<§(this.§9n§,{"strength":0},{"strength":4},§&!q§ / 4,§!D§.§=!t§),§!D§.§[!1§.§1"<§(this.§9n§,{"strength":4},{"strength":0},§&!q§ / 4,§!D§.§!!R§),§!D§.§[!1§.§1"<§(this.§9n§,{"strength":0},{"strength":4},§&!q§ / 4,§!D§.§=!t§));
         if(_loc4_)
         {
            _loc3_.play();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MovieClip = this.§!!>§["glowEffect"];
         if(!(_loc4_ && this))
         {
            _loc2_.visible = false;
            do
            {
               this.§#!m§();
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      private function §#!m§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:MovieClip = this.§!!>§.starTextBg as MovieClip;
         var _loc2_:MovieClip = this.§!!>§.planetLock as MovieClip;
         if(_loc4_)
         {
            if(this.§1_§)
            {
               loop0:
               while(true)
               {
                  _loc1_.filters = [this.§1_§,this.§9n§];
                  addr81:
                  while(true)
                  {
                     _loc2_.filters = [this.§1_§,this.§9n§];
                     if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr44);
               }
            }
            addr44:
            return;
         }
         §§goto(addr81);
      }
      
      public function set scrollIndex(param1:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:MovieClip = null;
         if(!(_loc8_ && _loc3_))
         {
            this.§[!L§ = param1;
         }
         var _loc2_:Number = Math.abs(param1);
         §§push(1 - Math.min(_loc2_,1));
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 1;
         if(!_loc8_)
         {
            §§push(_loc2_);
            if(_loc7_ || param1)
            {
               §§push(2);
               if(!_loc8_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc8_ && this))
                     {
                        addr77:
                        §§push(_loc2_);
                        if(!_loc8_)
                        {
                           addr81:
                           addr80:
                           §§push(§§pop() - 2);
                           if(!_loc8_)
                           {
                              addr84:
                              §§push(Number(§§pop()));
                           }
                           _loc3_ = §§pop();
                           §§goto(addr86);
                        }
                        §§goto(addr84);
                     }
                  }
                  addr86:
                  while(_loc4_ < 100)
                  {
                     if(!(_loc5_ = this.§!!>§["layer" + _loc4_]))
                     {
                        if(_loc7_ || param1)
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc5_.scaleX = _loc5_.scaleY = _loc3_;
                        if(!_loc7_)
                        {
                           continue;
                        }
                     }
                     _loc5_.visible = _loc3_ != 0;
                     if(!_loc8_)
                     {
                        _loc4_++;
                     }
                  }
                  return;
               }
               §§goto(addr81);
            }
            §§goto(addr80);
         }
         §§goto(addr77);
      }
      
      public function get scrollIndex() : Number
      {
         return this.§[!L§;
      }
      
      public function get §%f§() : Number
      {
         return this.§+!Z§;
      }
      
      public function set §%f§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+!Z§ = param1;
         }
      }
      
      public function get §+! §() : Number
      {
         return this.§""%§;
      }
      
      public function set §+! §(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§""%§ = param1;
         }
      }
      
      public function get §=0§() : Number
      {
         return this.§"&§;
      }
      
      public function set §=0§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§"&§ = param1;
         }
      }
      
      public function get §3"2§() : Number
      {
         return this.§7"&§;
      }
      
      public function set §3"2§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§7"&§ = param1;
         }
      }
   }
}
