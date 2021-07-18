package §'!O§
{
   import §"!I§.§ !;§;
   import §"!I§.§9§;
   import §"^§.§+!'§;
   import §&!T§.§%%§;
   import §&!T§.§<!,§;
   import §'!N§.§<i§;
   import §-!"§.§=p§;
   import §20§.§"!b§;
   import §20§.§-Z§;
   import §2`§.HighscoreSidebar;
   import §3!b§.§+!,§;
   import §3Y§.§4!_§;
   import §3Y§.§7!>§;
   import §5!1§.§&[§;
   import §6s§.§+!Y§;
   import §8P§.§1A§;
   import §8P§.§4!Y§;
   import §9I§.§+J§;
   import §9I§.§2!3§;
   import §9I§.§>!=§;
   import §9b§.§"!S§;
   import §;!3§.§;!P§;
   import §<!!§.§#!`§;
   import §<u§.§;A§;
   import §<u§.§]!Q§;
   import §=! §.§,Z§;
   import §=! §.§9>§;
   import §^!0§.§&M§;
   import §^!5§.§,4§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.net.URLLoader;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §<O§ implements §>!=§
   {
      
      public static const §@o§:String = "StatePlay";
      
      private static const §=_§:Number = -10000.0;
      
      private static const §09§:Number = 15000.0;
      
      private static const §#! §:Number = 15000.0;
      
      private static const §7!§:Number = 50;
      
      private static const §@W§:Number = 0.05;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@o§ = "StatePlay";
            while(true)
            {
               §=_§ = -10 * 1000;
               loop2:
               for(; _loc2_ || StatePlay; while(_loc2_ || _loc2_)
               {
                  §@W§ = 0.05;
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  §§goto(addr35);
               })
               {
                  §#! § = 15 * 1000;
                  while(_loc2_)
                  {
                     §7!§ = 50;
                     continue loop2;
                     if(_loc2_ || _loc2_)
                     {
                        return;
                     }
                  }
                  while(true)
                  {
                     §09§ = 15 * 1000;
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      private var §9!S§:Number = 0;
      
      private var §2!^§:Boolean = true;
      
      private var §4!c§:Boolean = false;
      
      private var §^4§:Number = -10000.0;
      
      private var §7!S§:int = 0;
      
      private var §@!Q§:Boolean = true;
      
      private var §>!+§:Boolean = false;
      
      private var §%!Z§:§#!`§ = null;
      
      private var §6!M§:§&[§ = null;
      
      private var §@a§:Number = 0;
      
      private var §"!4§:Number = 0;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.init();
         }
         while(true)
         {
            §]!9§ = new §]!Q§(this);
            while(!_loc1_)
            {
               §]!9§.init(§;A§.§=I§.Views.View_LevelPlay[0]);
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.levelStarted();
            loop0:
            while(true)
            {
               if(this.§9!S§ > 0)
               {
                  while(true)
                  {
                     §&M§.§=!7§();
                     loop3:
                     while(!(_loc2_ && _loc2_))
                     {
                        §9>§.§>%§(§,Z§.§-Q§,§,4§.§0!$§);
                        loop4:
                        while(true)
                        {
                           if(!(_loc1_ || this))
                           {
                              continue loop3;
                           }
                           §,L§.§+w§.§;S§.§>%§(§2!3§.§`m§);
                           loop5:
                           while(true)
                           {
                              if(!(_loc1_ || _loc2_))
                              {
                                 break loop4;
                              }
                              §&M§.§6!#§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop5;
                                 addr60:
                                 this.§@!Q§ = true;
                                 if(_loc1_)
                                 {
                                    return;
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                     addr142:
                     while(true)
                     {
                        this.§9!S§ = §#! §;
                        continue loop0;
                     }
                     addr123:
                  }
               }
               while(true)
               {
                  §+!Y§.§]5§("onLevelStart");
                  §§goto(addr78);
               }
            }
         }
         §§goto(addr142);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.activate();
            loop0:
            while(true)
            {
               §]!9§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
               addr80:
               while(true)
               {
                  this.§]![§();
                  continue loop0;
               }
            }
         }
         §§goto(addr62);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§6!M§);
            if(!(_loc2_ && this))
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§6!M§);
                     addr137:
                     while(true)
                     {
                        §§pop().§2=§();
                        addr138:
                        while(true)
                        {
                           this.§6!M§ = null;
                           addr113:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr135:
               }
               loop1:
               while(true)
               {
                  super.deActivate();
                  addr108:
                  loop5:
                  while(true)
                  {
                     this.§&9§();
                     while(!_loc2_)
                     {
                        this.§4x§();
                        loop7:
                        while(!(_loc2_ && _loc2_))
                        {
                           §§push(this.§%!Z§);
                           if(!_loc2_)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §,L§.§+w§.§;S§.§-$§();
                                    if(!_loc1_)
                                    {
                                       loop11:
                                       while(_loc2_ && _loc1_)
                                       {
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(this.§%!Z§);
                                                while(true)
                                                {
                                                   §§pop().dispose();
                                                }
                                                addr77:
                                             }
                                             else
                                             {
                                                §§goto(addr135);
                                             }
                                             continue loop11;
                                          }
                                          continue loop1;
                                       }
                                       continue;
                                       addr49:
                                    }
                                    if(!_loc2_)
                                    {
                                       if(_loc1_ || _loc1_)
                                       {
                                          return;
                                       }
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop5;
                                       }
                                       continue loop7;
                                    }
                                    continue loop5;
                                 }
                              }
                              §§goto(addr73);
                           }
                           §§goto(addr77);
                        }
                     }
                     §§goto(addr138);
                  }
               }
            }
            §§goto(addr137);
         }
         §§goto(addr108);
      }
      
      private function §&9§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§4!c§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(this.§^4§ > §09§)
                  {
                     if(_loc3_ || _loc1_)
                     {
                        while(true)
                        {
                           this.§4!c§ = true;
                        }
                        addr138:
                     }
                     do
                     {
                        _loc1_ = Math.round(1000 / this.§^4§ * this.§7!S§);
                        continue loop0;
                     }
                     while(!(_loc3_ || this));
                     
                     break;
                  }
                  addr117:
               }
               addr27:
               return;
            }
         }
         §§goto(addr138);
      }
      
      private function §=!]§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this);
            §§push(this.§^4§);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§^4§ = §§pop();
            if(_loc4_)
            {
               if(this.§^4§ > 0)
               {
                  if(!(_loc5_ && this))
                  {
                     addr54:
                     var _loc2_:*;
                     §§push((_loc2_ = this).§7!S§);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc5_)
                     {
                        _loc2_.§7!S§ = _loc3_;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      private function §4x§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§^4§ = §=_§;
            do
            {
               this.§7!S§ = 0;
            }
            while(_loc2_ && this);
            
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§&[§ = null;
         if(_loc4_)
         {
            if(this.§9!S§ > 0)
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§9!S§);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§9!S§ = §§pop();
                  addr271:
                  while(true)
                  {
                  }
                  addr230:
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
                  §§push(§"!b§.§5;§());
                  if(_loc4_)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(Boolean(§§pop()));
                        loop21:
                        while(!_loc5_)
                        {
                           loop10:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop11:
                                 while(true)
                                 {
                                    §§push(§"!S§.§-!7§);
                                    loop12:
                                    while(true)
                                    {
                                       if(§§pop().slingshot.§2!A§.length != 0)
                                       {
                                          sHighscoreSidebar.enableHelpButton(true);
                                          if(_loc4_)
                                          {
                                             if(!_loc5_)
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   this.§70§(param1);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc4_ || param1)
                                                         {
                                                            §§push(this.§>!+§);
                                                            if(!_loc5_)
                                                            {
                                                               addr27:
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(!(_loc4_ || _loc3_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(§"!S§.§-!7§);
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(!(_loc4_ || this))
                                                                                 {
                                                                                    break loop13;
                                                                                 }
                                                                                 (§§pop() as §<!,§).§6!Z§();
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(!(_loc5_ && _loc2_))
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          §§push(§"!S§.§-!7§);
                                                                                       }
                                                                                       continue loop13;
                                                                                       break loop12;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 addr333:
                                                                                 §§push(mNextState == §=4§.§@o§);
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr466:
                                                                                                   §§push(Boolean(this.§%!Z§));
                                                                                                   if(Boolean(this.§%!Z§))
                                                                                                   {
                                                                                                      addr468:
                                                                                                      §§pop();
                                                                                                      addr469:
                                                                                                      §§push(this.§%!Z§);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr448:
                                                                                                         §§push(§§pop().§^!^§);
                                                                                                         if(!(_loc5_ && param1))
                                                                                                         {
                                                                                                            §§goto(addr457);
                                                                                                         }
                                                                                                         §§goto(addr468);
                                                                                                      }
                                                                                                      §§goto(addr466);
                                                                                                   }
                                                                                                   addr457:
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      addr407:
                                                                                                      §§push(this.§%!Z§);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr413:
                                                                                                         §§push(!§§pop());
                                                                                                         if(_loc4_ || this)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               addr422:
                                                                                                               §§push(§§pop());
                                                                                                               if(!(_loc5_ && param1))
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr431:
                                                                                                                     §§pop();
                                                                                                                     addr432:
                                                                                                                     if(_loc4_ || param1)
                                                                                                                     {
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§push(mNextState.length > 0);
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              if(!(_loc5_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    addr374:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc4_ || _loc3_))
                                                                                                                                       {
                                                                                                                                          if(!(_loc5_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                addr405:
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr407);
                                                                                                                                                }
                                                                                                                                                addr470:
                                                                                                                                                §§push(super.run(param1));
                                                                                                                                                if(_loc4_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                }
                                                                                                                                                var _loc2_:* = §§pop();
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() == §=p§.STATE_STATUS_RUNNING)
                                                                                                                                                      {
                                                                                                                                                         addr753:
                                                                                                                                                         this.§=!]§(param1);
                                                                                                                                                         this.§]![§();
                                                                                                                                                         addr752:
                                                                                                                                                         addr757:
                                                                                                                                                         if(!§"!S§.§-!7§.objects.isPigsAlive())
                                                                                                                                                         {
                                                                                                                                                            addr745:
                                                                                                                                                            this.§&!§(false);
                                                                                                                                                            addr491:
                                                                                                                                                            addr748:
                                                                                                                                                            §§push(§"!S§.§-!7§);
                                                                                                                                                            if(_loc4_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc5_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().slingshot);
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().mSlingShotState);
                                                                                                                                                                           if(_loc4_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc4_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§9§.§-!U§);
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc4_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() == §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc5_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc4_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc5_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc4_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr576:
                                                                                                                                                                                                            §§push(§"!S§.§-!7§);
                                                                                                                                                                                                            if(_loc4_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr584:
                                                                                                                                                                                                               §§push(§§pop().slingshot);
                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  (§§pop() as §%%§).§'E§();
                                                                                                                                                                                                                  §§goto(addr589);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr674:
                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr677:
                                                                                                                                                                                                                  §§push(§§pop().mSlingShotState);
                                                                                                                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr688:
                                                                                                                                                                                                                     §§push(§§pop() == §9§.§5H§);
                                                                                                                                                                                                                     §§push(§§pop() == §9§.§5H§);
                                                                                                                                                                                                                     if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr699:
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr623:
                                                                                                                                                                                                                                 §§push(((§"!S§.§-!7§ as §<!,§).slingshot as §%%§).§[!b§);
                                                                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr634:
                                                                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                                                                       if(_loc4_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc4_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr648:
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr650);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             this.§&!§(false);
                                                                                                                                                                                                                                             §§goto(addr598);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr688);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr699);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr719:
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    §§push(§"!S§.§-!7§);
                                                                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr674);
                                                                                                                                                                                                                                       §§push(§§pop().slingshot);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr733:
                                                                                                                                                                                                                                       §§push(§§pop().slingshot.mSlingShotState == §9§.STATE_BIRD_IS_READY);
                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr736:
                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr737:
                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                             §§push(§"!S§.§-!7§.slingshot.§@!§());
                                                                                                                                                                                                                                             if(!_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc4_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr718:
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr719);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr688);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr733);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr737);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr719);
                                                                                                                                                                                                                                             addr738:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr688);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr753);
                                                                                                                                                                                                                                    addr720:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr634);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr757);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr648);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr736);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr718);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr733);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr737);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr623);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr780);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr748);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr738);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr720);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr699);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr589);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr589:
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr598:
                                                                                                                                                                                          if(!(_loc5_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc5_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc4_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr491);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr745);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr650:
                                                                                                                                                                                             if(_loc4_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc4_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr664:
                                                                                                                                                                                                   this.§&!§(true);
                                                                                                                                                                                                   §§goto(addr745);
                                                                                                                                                                                                   addr667:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr753);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr752);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr667);
                                                                                                                                                                                       }
                                                                                                                                                                                       return §=p§.STATE_STATUS_RUNNING;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr733);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr688);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr780);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr677);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr733);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr584);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr737);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr719);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr576);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr719);
                                                                                                                                                         §§push(§"!S§.§-!7§);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr780);
                                                                                                                                                   }
                                                                                                                                                   addr780:
                                                                                                                                                   return _loc2_;
                                                                                                                                                }
                                                                                                                                                §§goto(addr664);
                                                                                                                                             }
                                                                                                                                             §§goto(addr469);
                                                                                                                                          }
                                                                                                                                          §§goto(addr432);
                                                                                                                                       }
                                                                                                                                       return §=p§.STATE_STATUS_COMPLETED;
                                                                                                                                    }
                                                                                                                                    §§goto(addr470);
                                                                                                                                 }
                                                                                                                                 §§goto(addr466);
                                                                                                                              }
                                                                                                                              §§goto(addr413);
                                                                                                                           }
                                                                                                                           §§goto(addr431);
                                                                                                                        }
                                                                                                                        §§goto(addr458);
                                                                                                                     }
                                                                                                                     §§goto(addr407);
                                                                                                                  }
                                                                                                                  §§goto(addr374);
                                                                                                               }
                                                                                                               §§goto(addr466);
                                                                                                            }
                                                                                                            §§goto(addr448);
                                                                                                         }
                                                                                                         §§goto(addr457);
                                                                                                      }
                                                                                                      §§goto(addr469);
                                                                                                   }
                                                                                                   addr458:
                                                                                                   return §=p§.STATE_STATUS_COMPLETED;
                                                                                                   addr357:
                                                                                                }
                                                                                                §§goto(addr458);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr466);
                                                                                    }
                                                                                    §§goto(addr422);
                                                                                 }
                                                                                 §§goto(addr431);
                                                                              }
                                                                              break loop12;
                                                                           }
                                                                           addr211:
                                                                           if(!(_loc5_ && _loc2_))
                                                                           {
                                                                              §§push(this.§6!M§);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(§§pop().isCompleted);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!(_loc4_ || _loc3_))
                                                                                    {
                                                                                       continue loop21;
                                                                                    }
                                                                                    addr149:
                                                                                    §§push(!§§pop());
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr151:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(this.§6!M§);
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§pop().§99§();
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      if(_loc5_ && _loc2_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§6!M§);
                                                                                                            addr203:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr210:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           §§goto(addr211);
                                                                                                                        }
                                                                                                                        addr210:
                                                                                                                     }
                                                                                                                     §§goto(addr151);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        continue loop10;
                                                                                                                     }
                                                                                                                     loop19:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr228:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              §§goto(addr230);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(_loc4_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§-Z§.§ !6§);
                                                                                                                                    break loop21;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§@!Q§ = false;
                                                                                                                                 §§goto(addr242);
                                                                                                                              }
                                                                                                                              addr242:
                                                                                                                              addr253:
                                                                                                                           }
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        §§goto(addr271);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr226:
                                                                                                               }
                                                                                                               §§goto(addr210);
                                                                                                            }
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         addr201:
                                                                                                      }
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr126:
                                                                                                         sHighscoreSidebar.run(param1);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            sHighscoreSidebar.enableHelpButton(false);
                                                                                                            return §=p§.STATE_STATUS_RUNNING;
                                                                                                            addr125:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr228);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr271);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§@!Q§);
                                                                                                         addr248:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §-Z§.§0;§(§]!9§,true);
                                                                                                                  §§goto(addr253);
                                                                                                               }
                                                                                                               addr249:
                                                                                                            }
                                                                                                            §§goto(addr219);
                                                                                                            §§goto(addr27);
                                                                                                         }
                                                                                                         §§goto(addr271);
                                                                                                      }
                                                                                                      addr245:
                                                                                                   }
                                                                                                   §§goto(addr333);
                                                                                                }
                                                                                                §§goto(addr203);
                                                                                             }
                                                                                             addr332:
                                                                                             §§pop().play();
                                                                                          }
                                                                                          §§goto(addr333);
                                                                                       }
                                                                                       §§goto(addr126);
                                                                                    }
                                                                                    §§goto(addr210);
                                                                                 }
                                                                                 §§goto(addr149);
                                                                              }
                                                                              §§goto(addr332);
                                                                           }
                                                                           §§goto(addr249);
                                                                           §§goto(addr333);
                                                                        }
                                                                        §§goto(addr126);
                                                                     }
                                                                     §§goto(addr333);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.§6!M§);
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              addr330:
                                                                              §§goto(addr332);
                                                                              §§push(this.§6!M§);
                                                                           }
                                                                        }
                                                                        §§goto(addr333);
                                                                     }
                                                                  }
                                                                  §§goto(addr332);
                                                               }
                                                               §§goto(addr248);
                                                            }
                                                            §§goto(addr149);
                                                         }
                                                         §§goto(addr125);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            sHighscoreSidebar.enableHelpButton(false);
                                                            break loop14;
                                                         }
                                                         addr112:
                                                      }
                                                   }
                                                   addr115:
                                                   while(true)
                                                   {
                                                      continue loop13;
                                                   }
                                                }
                                                continue;
                                             }
                                             continue loop11;
                                          }
                                          §§goto(addr330);
                                       }
                                       §§goto(addr112);
                                    }
                                    _loc3_ = ((§§pop() as §<!,§).slingshot as §%%§).§,!+§();
                                    if(!(_loc5_ && this))
                                    {
                                       if(_loc3_ != null)
                                       {
                                          if(_loc4_)
                                          {
                                             this.§6!M§ = _loc3_;
                                             addr303:
                                             this.§>!+§ = false;
                                             §-Z§.§0;§(§]!9§,true);
                                             addr316:
                                             addr307:
                                             if(_loc4_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr303);
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                   §§goto(addr316);
                                                }
                                                §§goto(addr307);
                                             }
                                             §§goto(addr458);
                                          }
                                          §§goto(addr357);
                                       }
                                       §§goto(addr303);
                                    }
                                    §§goto(addr405);
                                 }
                              }
                              §§goto(addr201);
                           }
                        }
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc5_)
                           {
                              §§goto(addr226);
                              §§push(§§pop());
                           }
                        }
                        addr197:
                     }
                     §§goto(addr227);
                  }
                  §§goto(addr197);
               }
            }
            §§goto(addr245);
         }
         §§goto(addr115);
      }
      
      override protected function setInitialState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            sHighscoreSidebar.selectedLevelName = §,4§.§0!$§;
            do
            {
               sHighscoreSidebar.changeState(HighscoreSidebar.§`!e§);
               do
               {
                  §]!9§.getItemByName("Container_HiscoreContainer").y = 0;
               }
               while(_loc1_);
               
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      override protected function levelCompleted() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         if(!(_loc8_ && _loc2_))
         {
            if(!this.§%!Z§)
            {
               addr46:
               _loc1_ = "updateLevelProfile";
               if(_loc9_ || this)
               {
                  §§push(§,4§.§0!$§);
                  if(_loc9_)
                  {
                     §§push(§§pop());
                  }
                  _loc2_ = §§pop();
               }
               _loc3_ = §4!_§.§1q§(§,4§.§0!$§);
               if(!(_loc8_ && this))
               {
                  _loc4_ = §"!J§.getScore();
                  loop0:
                  while(true)
                  {
                     _loc5_ = false;
                     loop1:
                     while(true)
                     {
                        _loc3_.score = _loc4_;
                        loop2:
                        while(true)
                        {
                           §9>§.§>%§(§,Z§.§"-§,_loc2_,_loc4_);
                           while(!_loc8_)
                           {
                              _loc3_.levelId = _loc2_;
                              while(_loc9_)
                              {
                                 if(!_loc8_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                                 addr83:
                                 if(_loc9_ || this)
                                 {
                                    if(false)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          _loc3_.userId = §4!_§.§2!4§.id;
                                          while(true)
                                          {
                                             if(!_loc8_)
                                             {
                                                addr100:
                                                if(_loc8_ && _loc3_)
                                                {
                                                   break;
                                                }
                                                _loc3_.security = §#!`§.§9M§(_loc3_);
                                                if(!_loc9_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr83);
                                             }
                                             addr125:
                                             while(true)
                                             {
                                                continue loop7;
                                             }
                                          }
                                          addr131:
                                          while(true)
                                          {
                                             _loc3_.gamePlay = §"!S§.§-!7§.§%!T§().toString();
                                             §§goto(addr125);
                                             §§goto(addr100);
                                          }
                                       }
                                    }
                                    (_loc6_ = new Object()).id = §4!_§.§2!4§.id;
                                    if(_loc9_ || _loc1_)
                                    {
                                       _loc6_.security = §4!_§.§2!4§.security;
                                    }
                                    _loc7_ = {
                                       "player":_loc6_,
                                       "levelProfile":_loc3_
                                    };
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       this.§%!Z§ = new §#!`§(_loc7_,§,L§.§2;§ + _loc1_,this,§#!`§.§`!1§);
                                    }
                                    §§goto(addr229);
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr125);
            }
            addr229:
            return;
         }
         §§goto(addr46);
      }
      
      override public function getVictoryState() : String
      {
         return §=4§.§@o§;
      }
      
      override public function getLoserState() : String
      {
         return §<!Q§.§@o§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.keyDown(param1);
            loop0:
            while(true)
            {
               §§push(§-Z§.§ !6§);
               if(_loc4_)
               {
                  §§push(!§§pop());
               }
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr86:
                        while(true)
                        {
                           addr29:
                           do
                           {
                              §§push(§"!b§.§5;§());
                              if(!_loc3_)
                              {
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue loop2;
                                 }
                                 §§push(!§§pop());
                              }
                           }
                           while(_loc4_);
                           
                           continue loop1;
                        }
                     }
                  }
                  while(§§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        continue loop0;
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr128);
               }
            }
         }
         while(true)
         {
            var _loc2_:* = param1.keyCode;
            if(_loc4_)
            {
               if(Keyboard.R === _loc2_)
               {
                  addr103:
                  §§push(0);
                  if(_loc4_ || this)
                  {
                  }
               }
               else
               {
                  §§push(1);
               }
               switch(§§pop())
               {
                  case 0:
                     §<r§.§0^§();
                     if(_loc4_)
                     {
                        mNextState = §<r§.§@o§;
                        if(_loc4_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr29);
                        }
                        break;
                     }
               }
               addr128:
               return;
            }
            §§goto(addr103);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super.uiInteractionHandler(param1,param2,param3);
            loop0:
            while(param1 == 1)
            {
               loop1:
               do
               {
                  §§push(§"!S§.§-!7§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().slingshot);
                     if(_loc6_ || param1)
                     {
                        if(§§pop().mDragging)
                        {
                           addr252:
                           if(_loc6_ || param1)
                           {
                              addr250:
                              §§push(§"!S§.§-!7§.slingshot);
                              break;
                           }
                           loop4:
                           while(true)
                           {
                              §"!J§.changeGameState(§+!,§.§^§);
                              addr215:
                              while(true)
                              {
                                 if(!(_loc5_ && param3))
                                 {
                                    break loop4;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop1;
                           addr252:
                        }
                        else
                        {
                           loop3:
                           while(true)
                           {
                              §§push(§"!S§.§-!7§);
                              if(_loc6_ || param2)
                              {
                                 if(_loc5_ && param1)
                                 {
                                    continue loop2;
                                 }
                                 §§pop().camera.stopDragging();
                                 if(!_loc6_)
                                 {
                                    if(_loc6_ || param3)
                                    {
                                    }
                                    continue loop0;
                                 }
                                 if(_loc6_)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr215);
                              }
                              addr209:
                              while(true)
                              {
                                 continue loop3;
                              }
                           }
                           §§goto(addr252);
                        }
                        §§goto(addr250);
                     }
                     break;
                  }
                  §§pop().shoot();
                  §§goto(addr252);
               }
               while(!_loc6_);
               
               return;
            }
            var _loc4_:* = param2;
            if(!_loc5_)
            {
               if("CLOSE_TUTORIAL" === _loc4_)
               {
                  if(_loc6_ || param1)
                  {
                     §§push(0);
                     if(_loc5_)
                     {
                        addr302:
                     }
                  }
                  else
                  {
                     addr327:
                     §§push(4);
                     if(_loc6_ || this)
                     {
                        addr335:
                     }
                  }
               }
               else
               {
                  if("PAUSE" === _loc4_)
                  {
                     if(_loc6_)
                     {
                        §§push(1);
                        if(_loc6_)
                        {
                           §§goto(addr385);
                        }
                        else
                        {
                           §§goto(addr335);
                        }
                     }
                  }
                  else if("RESTART_LEVEL" === _loc4_)
                  {
                     if(!(_loc5_ && param1))
                     {
                        addr299:
                        §§push(2);
                        if(_loc6_)
                        {
                           §§goto(addr302);
                        }
                        else
                        {
                           addr321:
                           §§goto(addr385);
                        }
                     }
                     else
                     {
                        addr341:
                        §§push(5);
                        if(!(_loc6_ || param3))
                        {
                           addr380:
                        }
                        §§goto(addr385);
                     }
                  }
                  else if("POWERUP_USE" === _loc4_)
                  {
                     if(!(_loc5_ && param1))
                     {
                        §§push(3);
                        if(_loc6_ || param2)
                        {
                           §§goto(addr321);
                        }
                     }
                     else
                     {
                        addr355:
                        §§push(6);
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  else if("ZOOM_IN" === _loc4_)
                  {
                     if(_loc6_)
                     {
                        §§goto(addr327);
                     }
                  }
                  else if("ZOOM_OUT" === _loc4_)
                  {
                     if(_loc6_)
                     {
                        §§goto(addr341);
                     }
                  }
                  else if("ZOOM_IN_RELEASE" === _loc4_)
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr355);
                     }
                  }
                  else if("ZOOM_OUT_RELEASE" !== _loc4_)
                  {
                     addr385:
                     switch(§§pop())
                     {
                        case 0:
                           §-Z§.§5P§();
                           break;
                           addr165:
                        case 1:
                           §"!b§.§66§(§]!9§);
                           break;
                           addr159:
                        case 2:
                           §<r§.§0^§();
                           if(!_loc5_)
                           {
                              mNextState = §<r§.§@o§;
                              addr142:
                              if(_loc6_)
                              {
                                 break;
                              }
                              §§goto(addr159);
                           }
                           break;
                        case 3:
                           if(§,L§.§8!F§.§"!1§)
                           {
                              addr126:
                              this.§>!+§ = true;
                              if(_loc6_ || param1)
                              {
                              }
                              break;
                           }
                           §"!b§.§,]§(§]!9§);
                           addr118:
                           break;
                        case 4:
                           this.§@a§ = §@W§;
                           if(_loc6_ || param3)
                           {
                              if(!(_loc5_ && param1))
                              {
                                 this.§"!4§ = §7!§;
                                 break;
                                 addr90:
                              }
                              else
                              {
                                 §§goto(addr126);
                              }
                           }
                           break;
                        case 5:
                           §§push(this);
                           §§push(§@W§);
                           if(!(_loc5_ && param1))
                           {
                              §§push(-§§pop());
                           }
                           §§pop().§@a§ = §§pop();
                           this.§"!4§ = §7!§;
                           addr45:
                           break;
                           addr70:
                           addr85:
                        case 6:
                           this.§@a§ = 0;
                           addr51:
                           if(_loc6_ || param2)
                           {
                              if(_loc6_ || param3)
                              {
                                 break;
                              }
                              §§goto(addr118);
                           }
                           else
                           {
                              §§goto(addr70);
                           }
                           break;
                        case 7:
                           this.§@a§ = 0;
                           if(!_loc5_)
                           {
                              if(_loc6_)
                              {
                                 if(_loc6_)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(_loc6_ || this)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr165);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr142);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr90);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr85);
                                 }
                                 §§goto(addr45);
                              }
                              else
                              {
                                 §§goto(addr51);
                              }
                           }
                     }
                     return;
                     §§push(8);
                  }
                  §§goto(addr385);
                  if(!(_loc5_ && param2))
                  {
                     §§goto(addr380);
                  }
               }
               §§goto(addr385);
            }
            §§goto(addr299);
         }
         §§goto(addr209);
      }
      
      private function §70§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§@a§);
            loop0:
            while(§§pop())
            {
               while(true)
               {
                  §§push(this.§"!4§);
                  if(_loc3_ || _loc3_)
                  {
                     if(§§pop() <= §7!§)
                     {
                        break loop0;
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr103);
      }
      
      private function §]![§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = §"!J§.getScore();
         if(!(_loc3_ && _loc1_))
         {
            §]!9§.setText(_loc1_.toString(),"TextField_CurrentScore");
         }
         var _loc2_:int = §,L§.§8!F§.§%=§(§,4§.§0!$§);
         if(!_loc3_)
         {
            §]!9§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Object = §+J§.§;!+§((param1.currentTarget as URLLoader).data);
         §§push(§#!`§.§,!1§(_loc2_.levelProfile));
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(_loc3_ != _loc2_.levelProfileSecurity)
            {
               loop0:
               while(true)
               {
                  §#!_§.§<!9§ = true;
                  loop1:
                  while(true)
                  {
                     §,L§.§8!F§ = new §7!>§("");
                     loop2:
                     while(true)
                     {
                        §4!_§.§,t§ = new §;!P§();
                        loop3:
                        while(true)
                        {
                           §"!S§.§99§();
                           loop4:
                           while(_loc5_)
                           {
                              §§push(§"!S§.§-!7§);
                              while(true)
                              {
                                 §§push(false);
                                 addr243:
                                 addr251:
                                 while(true)
                                 {
                                    §§pop().§%2§(§§pop());
                                    continue loop3;
                                 }
                                 §§push(§"!S§.§-!7§);
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                                 §§push(false);
                                 if(_loc5_ || this)
                                 {
                                    §§pop().§3g§(§§pop());
                                    loop8:
                                    while(true)
                                    {
                                       §<r§.§>!D§ = §#!_§.§@o§;
                                       loop9:
                                       for(; !_loc4_; if(_loc4_ && this)
                                       {
                                          continue;
                                       },while(true)
                                       {
                                          §§goto(addr62);
                                       })
                                       {
                                          §,4§.§&O§(§,4§.§`Y§(HighscoreSidebar.§1!§));
                                          while(true)
                                          {
                                             §,L§.§+w§.§9^§(§<r§.§@o§);
                                             loop11:
                                             while(!(_loc4_ && param1))
                                             {
                                                if(_loc4_ && _loc2_)
                                                {
                                                   continue loop1;
                                                }
                                                §=j§.sHighscoreSidebar.reset();
                                                while(true)
                                                {
                                                   addr174:
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §4!_§.levelProfileSecurity = _loc2_.levelProfileSecurity;
                                                      loop14:
                                                      while(_loc5_)
                                                      {
                                                         if(_loc2_.overallScore != undefined)
                                                         {
                                                            while(!_loc4_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               §§push(§,L§.§8!F§);
                                                               while(true)
                                                               {
                                                                  §§pop().overallScore = _loc2_.overallScore as int;
                                                                  addr171:
                                                                  while(_loc5_)
                                                                  {
                                                                  }
                                                                  continue loop13;
                                                               }
                                                            }
                                                            continue loop4;
                                                            addr160:
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc2_.levelProfile == undefined)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc2_.powerUp != undefined)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(§,L§.§8!F§);
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§pop().§"!1§ = _loc2_.powerUp;
                                                                                 addr118:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    continue loop14;
                                                                                 }
                                                                                 continue loop9;
                                                                                 addr118:
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr160);
                                                                           }
                                                                           §§goto(addr166);
                                                                        }
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(sHighscoreSidebar.getScoreLoaderById(§,4§.§0!$§))
                                                                        {
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              if(_loc2_.isHighScore)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr80:
                                                                                    sHighscoreSidebar.getScoreLoaderById(§,4§.§0!$§).clearReloadTimer();
                                                                                 }
                                                                                 loop24:
                                                                                 while(_loc5_)
                                                                                 {
                                                                                    addr87:
                                                                                    if(!(_loc5_ || _loc2_))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §4!_§.levelProfile = _loc2_.levelProfile;
                                                                                          break loop24;
                                                                                          §§goto(addr87);
                                                                                       }
                                                                                       addr143:
                                                                                    }
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       §§goto(addr37);
                                                                                    }
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                              while(_loc2_.isOverallHighScore)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       sHighscoreSidebar.getScoreLoaderById(HighscoreSidebar.§<>§).clearReloadTimer();
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr118);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr54);
                                                                              }
                                                                              §§goto(addr37);
                                                                           }
                                                                           §§goto(addr80);
                                                                        }
                                                                        addr37:
                                                                        return;
                                                                     }
                                                                     addr62:
                                                                  }
                                                                  §§goto(addr118);
                                                               }
                                                               §§goto(addr171);
                                                               addr95:
                                                            }
                                                            §§goto(addr143);
                                                         }
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr243);
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr174);
         }
         §§goto(addr127);
      }
      
      public function §&!§(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<i§ = §]!9§.getItemByName("Button_PowerUp") as §<i§;
         if(!_loc3_)
         {
            if(!param1)
            {
               _loc2_.setComponentState(§4!Y§.§[&§);
               if(!_loc4_)
               {
                  addr69:
               }
               return;
            }
            if(_loc4_)
            {
               addr65:
               _loc2_.setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            §§goto(addr69);
         }
         §§goto(addr65);
      }
      
      public function §3!X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'z§(param1:IOErrorEvent) : void
      {
      }
      
      public function get §[!-§() : Boolean
      {
         return this.§>!+§;
      }
      
      public function set §[!-§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§>!+§ = param1;
         }
      }
   }
}
