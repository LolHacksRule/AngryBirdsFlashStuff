package com.angrybirds.utils
{
   import §&!y§.§14§;
   import §'!3§.§ !3§;
   import §'!3§.§,!S§;
   import §1![§.§#E§;
   import §1!i§.§`!t§;
   import §4[§.§2P§;
   import §4[§.§3!<§;
   import §4[§.§<!o§;
   import §[!5§.§2p§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §1"1§ extends EventDispatcher implements §30§
   {
       
      
      private var §;"5§:Boolean = false;
      
      private var § "3§:§,!S§;
      
      public function §1"1§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
         do
         {
            this.§ "3§ = new §,!S§();
         }
         while(_loc1_);
         
      }
      
      public function §0!h§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:§#E§ = null;
         §§push(param1.length == 0);
         if(_loc6_)
         {
            §§push(!§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc7_)
         {
            §§push(this.§;"5§);
            if(_loc6_ || param1)
            {
               §§push(false);
               if(!_loc7_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc6_)
                  {
                     §§push(§§pop());
                     if(!(_loc7_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              §§goto(addr61);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr153);
                  }
                  addr61:
                  §§pop();
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(_loc2_);
                     if(_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc7_)
                        {
                           addr75:
                           if(§§pop())
                           {
                              if(!_loc7_)
                              {
                                 addr78:
                                 _loc3_ = "code";
                                 _loc4_ = {
                                    "playerId":§2P§.§[!$§.id,
                                    "code":param1
                                 };
                                 _loc5_ = new §#E§(_loc4_,AngryBirdsCustom.§;"1§ + _loc3_,this,§#E§.§3b§);
                                 if(_loc6_ || _loc2_)
                                 {
                                    this.§;"5§ = true;
                                    if(!_loc7_)
                                    {
                                       addr123:
                                       (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(this.§ "3§);
                                    }
                                    §§goto(addr209);
                                 }
                                 §§goto(addr123);
                              }
                              else
                              {
                                 addr176:
                                 (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new § !3§(§2p§.ENTER_CODE));
                                 if(!(_loc7_ && param1))
                                 {
                                    dispatchEvent(new §@,§(§@,§.§,k§));
                                 }
                                 §§goto(addr209);
                              }
                           }
                           else
                           {
                              §§push(this.§;"5§);
                              if(_loc6_)
                              {
                                 addr136:
                                 §§push(false);
                                 if(!(_loc7_ && param1))
                                 {
                                    addr144:
                                    §§push(§§pop() == §§pop());
                                    if(_loc6_ || _loc2_)
                                    {
                                       §§goto(addr153);
                                    }
                                 }
                                 addr153:
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       addr161:
                                       §§pop();
                                       if(!_loc7_)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc7_)
                                          {
                                             addr167:
                                             §§push(!§§pop());
                                          }
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr167);
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc6_ || _loc2_)
                                    {
                                       §§goto(addr176);
                                    }
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr161);
                  }
                  addr209:
                  return;
               }
               §§goto(addr144);
            }
            §§goto(addr167);
         }
         §§goto(addr78);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc2_:Object = §2!N§.§6l§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         if(_loc9_)
         {
            this.§;"5§ = false;
            if(_loc9_)
            {
               addr39:
               this.§ "3§.close();
            }
            var _loc4_:int = 6000;
            if(_loc9_)
            {
               §§push(Boolean(_loc2_));
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§pop();
                           if(!_loc10_)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(!_loc2_.error);
                                 if(_loc9_)
                                 {
                                    if(_loc10_ && _loc2_)
                                    {
                                       continue loop2;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(Boolean(_loc2_));
                                          break;
                                       }
                                       if(_loc9_ || _loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(Boolean(_loc2_.chapters));
                                             if(_loc9_ || param1)
                                             {
                                                §§push(§§pop());
                                                loop8:
                                                while(true)
                                                {
                                                   if(!(_loc9_ || param1))
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr130:
                                                   if(§§pop())
                                                   {
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         if(_loc10_)
                                                         {
                                                            break loop2;
                                                            addr134:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.chapters is Array);
                                                            if(!_loc9_)
                                                            {
                                                               break loop3;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            if(!(_loc10_ && _loc2_))
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  break;
                                                                  addr65:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc9_ || _loc3_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                        }
                                                                        break loop3;
                                                                     }
                                                                     break loop3;
                                                                  }
                                                                  continue loop8;
                                                                  §§goto(addr130);
                                                               }
                                                               continue loop9;
                                                            }
                                                            if(!(_loc10_ && _loc2_))
                                                            {
                                                               §§pop();
                                                               if(_loc9_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     §§push(Boolean(§2P§.§[!$§));
                                                                  }
                                                                  continue loop3;
                                                                  break loop3;
                                                               }
                                                               break loop2;
                                                            }
                                                            continue loop9;
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   §§goto(addr65);
                                                }
                                             }
                                             break loop3;
                                          }
                                          addr111:
                                       }
                                       §§goto(addr134);
                                    }
                                    addr793:
                                    if(!(§§pop() && _loc2_.error == §2p§.CODE_USED))
                                    {
                                       addr733:
                                       §§push(Boolean(_loc2_));
                                       if(Boolean(_loc2_))
                                       {
                                          addr735:
                                          §§pop();
                                          addr736:
                                          §§push(_loc2_.error == §2p§.PLAYER_BANNED);
                                          if(_loc9_)
                                          {
                                             addr708:
                                             if(!§§pop())
                                             {
                                                addr658:
                                                §§push(Boolean(_loc2_));
                                                §§push(Boolean(_loc2_));
                                                if(!(_loc10_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr667:
                                                      if(!_loc10_)
                                                      {
                                                         §§pop();
                                                         addr670:
                                                         if(_loc9_ || _loc2_)
                                                         {
                                                            addr621:
                                                            §§push(_loc2_.error == §2p§.IP_BANNED);
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               addr628:
                                                               if(§§pop())
                                                               {
                                                                  addr630:
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     addr639:
                                                                     (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
                                                                     addr645:
                                                                     if(_loc10_ && _loc2_)
                                                                     {
                                                                        §§goto(addr670);
                                                                     }
                                                                     addr605:
                                                                     (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new § !3§(§2p§.IP_BANNED,_loc4_));
                                                                     return;
                                                                     addr614:
                                                                  }
                                                                  §§goto(addr736);
                                                               }
                                                               addr580:
                                                               §§push(Boolean(_loc2_));
                                                               if(!_loc10_)
                                                               {
                                                                  addr583:
                                                                  §§push(§§pop());
                                                                  if(!(_loc10_ && _loc2_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr591:
                                                                        §§pop();
                                                                        addr592:
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr561:
                                                                              addr560:
                                                                              if(_loc2_.error == §2p§.TOO_MANY_CODES)
                                                                              {
                                                                                 addr562:
                                                                                 §§push(§ !4§.§%"7§);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    (§§pop() as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
                                                                                    addr572:
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr526:
                                                                                       §§push(§ !4§.§%"7§);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§goto(addr639);
                                                                                       }
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(!(_loc10_ && param1))
                                                                                          {
                                                                                             (§§pop() as AngryBirdsCustom).§+!J§.openPopup(new § !3§(§2p§.TOO_MANY_CODES,_loc4_));
                                                                                             addr546:
                                                                                             if(!(_loc9_ || _loc2_))
                                                                                             {
                                                                                                addr821:
                                                                                                §2P§.levelProfileSecurity = _loc2_.levelProfileSecurity;
                                                                                                if(_loc2_.levelProfile != undefined)
                                                                                                {
                                                                                                   addr814:
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §2P§.levelProfile = _loc2_.levelProfile;
                                                                                                      §2P§.§-l§();
                                                                                                      addr808:
                                                                                                      addr820:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr844:
                                                                                                      (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§ = new §3!<§("",(§ !4§.§%"7§ as AngryBirdsCustom).§[!,§);
                                                                                                      §2P§.§[!$§ = new §<!o§();
                                                                                                      §2P§.levelProfile = [];
                                                                                                      return;
                                                                                                      addr840:
                                                                                                      addr834:
                                                                                                      addr888:
                                                                                                      addr855:
                                                                                                   }
                                                                                                }
                                                                                                dispatchEvent(new §@,§(§@,§.§=h§));
                                                                                                addr804:
                                                                                                addr826:
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr755:
                                                                                             (§§pop() as AngryBirdsCustom).§+!J§.openPopup(new § !3§(§2p§.CODE_USED,_loc4_));
                                                                                             if(!(_loc9_ || _loc2_))
                                                                                             {
                                                                                                addr782:
                                                                                                (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
                                                                                                §§goto(addr755);
                                                                                                §§push(§ !4§.§%"7§);
                                                                                                addr788:
                                                                                                addr780:
                                                                                             }
                                                                                             dispatchEvent(new §@,§(§@,§.§+!§));
                                                                                             if(_loc10_ && _loc3_)
                                                                                             {
                                                                                                §§goto(addr808);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr681:
                                                                                          (§§pop() as AngryBirdsCustom).§+!J§.openPopup(new § !3§(§2p§.PLAYER_BANNED,_loc4_));
                                                                                          addr690:
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(_loc10_ && this)
                                                                                             {
                                                                                                §§goto(addr840);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr755);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr639);
                                                                                    }
                                                                                    §§goto(addr834);
                                                                                 }
                                                                                 §§goto(addr605);
                                                                              }
                                                                              addr516:
                                                                              §§push(Boolean(_loc2_));
                                                                              if(Boolean(_loc2_))
                                                                              {
                                                                                 addr517:
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr520:
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       addr473:
                                                                                       §§push(_loc2_.error == §2p§.CODE_NOT_EXIST);
                                                                                       if(_loc9_ || _loc3_)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             addr484:
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(!(_loc10_ && this))
                                                                                             {
                                                                                                if(_loc9_ || this)
                                                                                                {
                                                                                                   addr500:
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr503:
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr506:
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               addr441:
                                                                                                               §§push(Boolean(_loc2_.field));
                                                                                                               §§push(Boolean(_loc2_.field));
                                                                                                               if(!(_loc10_ && _loc2_))
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr452:
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr455:
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(!(_loc10_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr360:
                                                                                                                                    §§push(_loc2_.field >= 5);
                                                                                                                                    if(!(_loc10_ && param1))
                                                                                                                                    {
                                                                                                                                       addr367:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          addr369:
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             if(_loc9_ || this)
                                                                                                                                             {
                                                                                                                                                if(!(_loc10_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc10_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr394:
                                                                                                                                                      §§push(§ !4§.§%"7§);
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         (§§pop() as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
                                                                                                                                                         addr402:
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc10_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc10_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc10_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr334:
                                                                                                                                                                     §§push(§ !4§.§%"7§);
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        (§§pop() as AngryBirdsCustom).§+!J§.openPopup(new § !3§(§2p§.CODE_NOT_EXIST_TOO_MANY_WARNING,_loc4_));
                                                                                                                                                                        addr345:
                                                                                                                                                                        if(_loc9_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr506);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr639);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr402);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr394);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr788);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr690);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr572);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr455);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr526);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr814);
                                                                                                                                                }
                                                                                                                                                §§goto(addr614);
                                                                                                                                             }
                                                                                                                                             §§goto(addr592);
                                                                                                                                          }
                                                                                                                                          §§goto(addr562);
                                                                                                                                       }
                                                                                                                                       §§push(Boolean(_loc2_));
                                                                                                                                       if(_loc9_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             if(_loc9_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr309:
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc10_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr323:
                                                                                                                                                                     if(_loc9_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(_loc2_.error));
                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr253:
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    addr255:
                                                                                                                                                                                    if(_loc9_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr264:
                                                                                                                                                                                       §§push(§ !4§.§%"7§);
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc10_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                (§§pop() as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
                                                                                                                                                                                                addr281:
                                                                                                                                                                                                §§push(§ !4§.§%"7§);
                                                                                                                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      (§§pop() as AngryBirdsCustom).§+!J§.openPopup(new § !3§(§2p§.CODE_NOT_EXIST,_loc4_));
                                                                                                                                                                                                      addr236:
                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               dispatchEvent(new §@,§(§@,§.§>$§));
                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc9_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc10_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc9_ || param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr520);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc9_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr639);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr546);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr369);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr255);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr236);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr820);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr345);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr281);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr782);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr264);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr712:
                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                (§§pop() as AngryBirdsCustom).§+!J§.closePopup(§`!t§.§9r§);
                                                                                                                                                                                                addr720:
                                                                                                                                                                                                if(_loc9_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr681);
                                                                                                                                                                                                   §§push(§ !4§.§%"7§);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr804);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr844);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr562);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr334);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr323);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr639);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr484);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr441);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr309);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr755);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr795);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr736);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr473);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr360);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr253);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr583);
                                                                                                                                                }
                                                                                                                                                §§goto(addr441);
                                                                                                                                             }
                                                                                                                                             §§goto(addr503);
                                                                                                                                          }
                                                                                                                                          §§goto(addr452);
                                                                                                                                       }
                                                                                                                                       §§goto(addr309);
                                                                                                                                    }
                                                                                                                                    §§goto(addr517);
                                                                                                                                 }
                                                                                                                                 addr885:
                                                                                                                                 §14§.§>c§ = true;
                                                                                                                                 §§goto(addr888);
                                                                                                                              }
                                                                                                                              §§goto(addr855);
                                                                                                                           }
                                                                                                                           §§goto(addr826);
                                                                                                                        }
                                                                                                                        §§goto(addr658);
                                                                                                                     }
                                                                                                                     §§goto(addr367);
                                                                                                                  }
                                                                                                                  §§goto(addr516);
                                                                                                               }
                                                                                                               §§goto(addr500);
                                                                                                            }
                                                                                                            §§goto(addr720);
                                                                                                         }
                                                                                                         §§goto(addr516);
                                                                                                      }
                                                                                                      §§goto(addr441);
                                                                                                   }
                                                                                                   §§goto(addr658);
                                                                                                }
                                                                                                §§goto(addr733);
                                                                                             }
                                                                                             §§goto(addr735);
                                                                                          }
                                                                                          §§goto(addr580);
                                                                                       }
                                                                                       §§goto(addr561);
                                                                                    }
                                                                                    §§goto(addr645);
                                                                                 }
                                                                                 §§goto(addr591);
                                                                              }
                                                                              §§goto(addr500);
                                                                           }
                                                                           §§goto(addr796);
                                                                        }
                                                                        §§goto(addr630);
                                                                     }
                                                                     §§goto(addr560);
                                                                  }
                                                                  §§goto(addr733);
                                                               }
                                                               §§goto(addr621);
                                                            }
                                                            §§goto(addr667);
                                                            addr677:
                                                         }
                                                         addr710:
                                                         §§goto(addr712);
                                                         §§push(§ !4§.§%"7§);
                                                      }
                                                      §§goto(addr793);
                                                   }
                                                   §§goto(addr628);
                                                }
                                                §§goto(addr793);
                                             }
                                             §§goto(addr710);
                                          }
                                          §§goto(addr793);
                                       }
                                       §§goto(addr708);
                                    }
                                    §§goto(addr780);
                                 }
                                 break;
                              }
                              if(§§pop())
                              {
                                 break;
                              }
                              addr856:
                              §§push(§#E§.§0"$§(_loc2_.levelProfile));
                              if(!_loc10_)
                              {
                                 §§push(§§pop());
                                 if(_loc9_ || param1)
                                 {
                                    §§push(_loc5_ = §§pop());
                                 }
                              }
                              if(§§pop() != _loc2_.levelProfileSecurity)
                              {
                                 §§goto(addr885);
                              }
                              else
                              {
                                 §§goto(addr821);
                              }
                           }
                           break;
                        }
                        var _loc7_:int = 0;
                        var _loc8_:* = _loc2_.chapters;
                        addr166:
                        for each(_loc6_ in _loc8_)
                        {
                           if(!_loc10_)
                           {
                              §2P§.§[!$§.§switch§(_loc6_);
                           }
                           §§goto(addr166);
                        }
                        if(_loc9_)
                        {
                           §§goto(addr856);
                        }
                        else
                        {
                           §§goto(addr677);
                        }
                     }
                     §§goto(addr102);
                  }
               }
            }
            §§goto(addr111);
         }
         §§goto(addr39);
      }
      
      public function §?!§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'![§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            dispatchEvent(new §@,§(§@,§.§>$§));
            do
            {
               this.§;"5§ = false;
            }
            while(_loc3_ && this);
            
         }
      }
   }
}
