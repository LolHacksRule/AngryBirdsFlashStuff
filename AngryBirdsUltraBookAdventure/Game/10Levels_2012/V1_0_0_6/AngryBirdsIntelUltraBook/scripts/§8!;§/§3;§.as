package §8!;§
{
   import §#&§.§9!o§;
   import §#&§.§`S§;
   import §%t§.§4!&§;
   import §%t§.§9!7§;
   import §%t§.§?!a§;
   import §,!§.§![§;
   import §1!E§.§#?§;
   import §1!E§.§1!=§;
   import §1!E§.§?!x§;
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §6!Y§.§!o§;
   import §6!Y§.§0!x§;
   import §>! §.§^!c§;
   import §>7§.§&! §;
   import §[!+§.§4`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §3;§
   {
       
      
      private var §&!m§:§4`§;
      
      private var §@e§:§0!x§;
      
      private var §<+§:§!q§;
      
      private var §2N§:§!q§;
      
      private var §6!H§:Number;
      
      private var §&T§:Number;
      
      private var §^F§:§9!7§;
      
      private var §%!u§:§4!&§;
      
      private var §&$§:Boolean = false;
      
      private var §]!y§:Boolean;
      
      private var §!J§:§9!o§;
      
      private var §4!q§:int;
      
      private var §9;§:§9!o§;
      
      private var §-!'§:int = -1;
      
      private var § k§:Array;
      
      private var §`!2§:String;
      
      private var §1P§:§9!o§;
      
      private var §`]§:§#?§;
      
      private var §1!$§:§#?§;
      
      private var §?r§:§&! §;
      
      private var §#!q§:§1!=§;
      
      private var §[R§:§1!=§;
      
      private var §3A§:§1!=§;
      
      private var §"X§:§1!=§;
      
      private var §;y§:§1!=§;
      
      private var §?"§:§1!=§;
      
      private var §3k§:§?!x§;
      
      private var §`X§:§?!x§;
      
      private var §2!G§:§?!x§;
      
      private var §>!M§:§?!x§;
      
      private var §&f§:§?!x§;
      
      private var §`!%§:§?!x§;
      
      public function §3;§(param1:§4`§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§ k§ = [];
            while(true)
            {
               super();
               addr87:
               while(!_loc3_)
               {
                  this.§&!m§ = param1;
                  while(true)
                  {
                     this.§7!r§();
                  }
               }
            }
         }
         loop3:
         while(true)
         {
            this.§6!H§ = this.§1!$§.x;
            while(true)
            {
               if(_loc2_ || _loc3_)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue;
               }
               continue loop3;
            }
            §§goto(addr83);
         }
      }
      
      private function §7!r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§1!$§ = this.§&!m§.getItemByName("Container_VsHero") as §#?§;
            loop0:
            while(true)
            {
               this.§?r§ = this.§&!m§.getItemByName("Container_VsEnemy") as §#?§;
               loop1:
               while(true)
               {
                  this.§`]§ = this.§&!m§.getItemByName("Container_Vs") as §#?§;
                  while(!_loc1_)
                  {
                     this.§#!q§ = this.§&!m§.getItemByName("MovieClip_VsAnimation") as §1!=§;
                     loop3:
                     for(; !(_loc1_ && this); if(_loc2_ || this)
                     {
                        return;
                        addr56:
                     })
                     {
                        this.§[R§ = this.§&!m§.getItemByName("MovieClip_Boom") as §1!=§;
                        loop4:
                        while(true)
                        {
                           this.§3A§ = this.§&!m§.getItemByName("MovieClip_VsProfilePicHero") as §1!=§;
                           while(true)
                           {
                              this.§"X§ = this.§&!m§.getItemByName("MovieClip_VsProfilePicEnemy") as §1!=§;
                              while(!(_loc1_ && this))
                              {
                                 this.§;y§ = this.§&!m§.getItemByName("MovieClip_CrownHero") as §1!=§;
                                 while(true)
                                 {
                                    this.§?"§ = this.§&!m§.getItemByName("MovieClip_CrownEnemy") as §1!=§;
                                    addr160:
                                    while(true)
                                    {
                                       this.§3k§ = this.§&!m§.getItemByName("TextField_VsScore") as §?!x§;
                                       continue loop1;
                                    }
                                 }
                                 addr87:
                                 if(_loc1_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 this.§&f§ = this.§&!m§.getItemByName("TextField_VsPositionHero") as §?!x§;
                                 do
                                 {
                                    this.§`!%§ = this.§&!m§.getItemByName("TextField_VsPositionEnemy") as §?!x§;
                                 }
                                 while(_loc1_ && _loc1_);
                                 
                                 addr94:
                                 if(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             addr80:
                                             if(_loc1_ && this)
                                             {
                                                break;
                                             }
                                             §§goto(addr87);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§2!G§ = this.§&!m§.getItemByName("TextField_NameHero") as §?!x§;
                                             }
                                             addr133:
                                          }
                                       }
                                       while(_loc2_)
                                       {
                                          continue loop4;
                                       }
                                       §§goto(addr160);
                                       §§goto(addr94);
                                    }
                                    continue loop1;
                                    addr76:
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr170);
                              }
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§`X§ = this.§&!m§.getItemByName("TextField_VsScoreEnemy") as §?!x§;
            §§goto(addr133);
         }
         §§goto(addr56);
      }
      
      public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(this.§<+§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr38:
                     this.§<+§.play();
                     if(_loc4_ || _loc3_)
                     {
                     }
                     addr75:
                     this.§2N§.play();
                     addr76:
                     var _loc1_:MovieClip = this.§&!m§.getItemByName("PlayerNameMask").mClip;
                     addr73:
                     §§push((AngryBirdsFP11.sUserProgress as §![§).userName);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop());
                     }
                     var _loc2_:* = §§pop();
                     if(_loc4_ || _loc3_)
                     {
                        this.§"+§(_loc2_,this.§2!G§,_loc1_);
                        while(this.§1P§)
                        {
                           if(_loc4_)
                           {
                              this.§"+§(this.§1P§.userName,this.§>!M§,this.§&!m§.getItemByName("EnemyNameMask").mClip);
                           }
                           if(_loc4_ || _loc2_)
                           {
                              addr144:
                              break;
                           }
                        }
                        return;
                     }
                     §§goto(addr144);
                     addr73:
                  }
                  §§goto(addr73);
               }
               §§push(this.§2N§);
               if(!(_loc3_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc4_ || _loc2_)
                     {
                        §§goto(addr73);
                     }
                  }
                  §§goto(addr76);
               }
               §§goto(addr75);
            }
         }
         §§goto(addr38);
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§<+§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§<+§);
                     addr121:
                     loop6:
                     while(true)
                     {
                        §§pop().pause();
                        addr122:
                        while(true)
                        {
                           §§push(this.§<+§);
                           if(_loc1_ || this)
                           {
                              break;
                           }
                           continue loop6;
                        }
                        addr113:
                        §§pop().§]! § = false;
                        addr113:
                     }
                     addr73:
                     if(!(_loc1_ || _loc2_))
                     {
                        continue;
                     }
                     §§push(this.§2N§);
                     loop3:
                     while(true)
                     {
                        §§pop().pause();
                        addr93:
                        while(true)
                        {
                           if(_loc1_ || _loc1_)
                           {
                              continue loop3;
                           }
                           §§goto(addr113);
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr68);
                  §§goto(addr113);
               }
            }
            §§goto(addr121);
         }
         §§goto(addr100);
      }
      
      public function levelStarted(param1:§0!x§, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§`!2§ = param2;
            while(true)
            {
               this.§2!1§();
               loop1:
               for(; _loc3_ || param1; if(_loc4_ && _loc3_)
               {
                  continue;
               },this.§1!$§.x = this.§6!H§,§§goto(addr109))
               {
                  this.§6&§();
                  while(true)
                  {
                     §§push(this.§?r§);
                     while(true)
                     {
                        §§pop().setVisibility(true);
                        loop4:
                        while(true)
                        {
                           this.§`]§.setVisibility(false);
                           while(true)
                           {
                              this.§@e§ = param1;
                              loop6:
                              while(true)
                              {
                                 this.§&$§ = false;
                                 while(true)
                                 {
                                    this.§9;§ = null;
                                    loop8:
                                    while(!(_loc4_ && this))
                                    {
                                       this.§-!'§ = -1;
                                       while(true)
                                       {
                                          this.§ k§ = [];
                                          while(true)
                                          {
                                             §§push(this.§#!q§);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(true);
                                                addr187:
                                                while(true)
                                                {
                                                   §§pop().setVisibility(§§pop());
                                                   addr188:
                                                   while(true)
                                                   {
                                                      §§push(this.§#!q§);
                                                      while(true)
                                                      {
                                                         §§pop().§&!3§("Start");
                                                         addr182:
                                                         while(true)
                                                         {
                                                            §§push(this.§#!q§);
                                                            if(_loc4_ && this)
                                                            {
                                                               break;
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr70:
                                             while(_loc3_ || param1)
                                             {
                                                this.§<+§ = null;
                                                continue loop6;
                                             }
                                          }
                                          if(_loc4_ && param1)
                                          {
                                             continue;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop4;
                                          }
                                          this.§2N§ = null;
                                          §§goto(addr70);
                                       }
                                       while(true)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             continue loop1;
                                          }
                                          continue loop8;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              if(!(_loc4_ && this))
                              {
                                 return;
                                 addr53:
                              }
                           }
                        }
                        §§push(this.§?r§);
                        if(_loc4_)
                        {
                           continue;
                        }
                        §§pop().y = this.§&T§;
                        §§goto(addr86);
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      private function initialize() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         if(!(_loc6_ && this))
         {
            this.§6!+§();
         }
         var _loc1_:MovieClip = this.§&!m§.getItemByName("PlayerNameMask").mClip;
         §§push((AngryBirdsFP11.sUserProgress as §![§).userName);
         if(_loc7_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc6_)
         {
            §§push(this.§"+§(_loc2_,this.§2!G§,_loc1_));
            if(!(_loc6_ && _loc1_))
            {
               §§push(§§pop());
            }
            _loc2_ = §§pop();
            if(!_loc6_)
            {
               this.§9;§ = null;
            }
         }
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§`!2§));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
         {
            this.§!J§ = this.§@e§.§'![§();
            loop0:
            while(true)
            {
               §§push(this.§!J§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(1);
                     if(!(_loc6_ && this))
                     {
                        _loc3_ = §§pop();
                        loop2:
                        while(true)
                        {
                           if(_loc7_ || _loc3_)
                           {
                              §§push(this.§?r§);
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(false);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§pop().setVisibility(§§pop());
                                    loop3:
                                    while(true)
                                    {
                                       §§push(this.§#!q§);
                                       if(!_loc6_)
                                       {
                                          §§push(false);
                                          if(!_loc6_)
                                          {
                                             §§pop().setVisibility(§§pop());
                                             loop4:
                                             while(true)
                                             {
                                                this.§1!$§.x = this.§?r§.x;
                                                loop5:
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc7_ || _loc1_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§?r§);
                                                               addr205:
                                                               while(true)
                                                               {
                                                                  §§push(true);
                                                                  addr206:
                                                                  while(true)
                                                                  {
                                                                     §§pop().setVisibility(§§pop());
                                                                     addr207:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§#!q§);
                                                                        addr199:
                                                                        while(true)
                                                                        {
                                                                           §§push(true);
                                                                           addr200:
                                                                           while(true)
                                                                           {
                                                                              §§pop().setVisibility(§§pop());
                                                                              addr201:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr225:
                                                         }
                                                         loop6:
                                                         while(true)
                                                         {
                                                            this.§&f§.setText(_loc3_.toString());
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(§§pop() > 0)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(AngryBirdsFP11.sUserProgress);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       (§§pop() as §![§).§=!9§(LevelManager.§%n§,_loc3_);
                                                                                       addr105:
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc7_ || _loc2_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          addr243:
                                                                                          §§push(AngryBirdsFP11.sUserProgress);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.§2!k§(this.§!J§);
                                                                                             addr234:
                                                                                             while(!_loc6_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr230:
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop().getEagleScoreForLevel(this.§`!2§));
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr250:
                                                                                       §§push(int(§§pop()));
                                                                                       break;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr105);
                                                                        }
                                                                        §§goto(addr243);
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               continue loop4;
                                                            }
                                                            addr251:
                                                            var _loc5_:* = §§pop();
                                                            if(_loc7_ || this)
                                                            {
                                                               addr476:
                                                               §§push(this.§;y§);
                                                               §§push(_loc3_);
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  §§push(3);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop() <= §§pop());
                                                                     if(_loc7_ || _loc1_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc7_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§pop();
                                                                                 addr512:
                                                                                 §§push(_loc4_);
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    addr520:
                                                                                    §§push(0);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() > §§pop());
                                                                                       if(!(_loc6_ && _loc2_))
                                                                                       {
                                                                                          addr532:
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                             }
                                                                                             addr539:
                                                                                             §§pop().setVisibility(§§pop());
                                                                                             addr540:
                                                                                             §§push(_loc3_ > 0);
                                                                                             if(_loc7_ || this)
                                                                                             {
                                                                                                addr471:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr472:
                                                                                                   §§pop();
                                                                                                   addr473:
                                                                                                   §§push(_loc3_);
                                                                                                   if(_loc7_ || _loc2_)
                                                                                                   {
                                                                                                      addr446:
                                                                                                      §§push(§§pop() <= 3);
                                                                                                      if(§§pop() <= 3)
                                                                                                      {
                                                                                                         addr450:
                                                                                                         §§pop();
                                                                                                         addr451:
                                                                                                         if(_loc7_ || this)
                                                                                                         {
                                                                                                            addr400:
                                                                                                            §§push(_loc4_);
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr403:
                                                                                                               §§push(0);
                                                                                                               if(!(_loc6_ && _loc1_))
                                                                                                               {
                                                                                                                  addr411:
                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                  if(!(_loc6_ && _loc1_))
                                                                                                                  {
                                                                                                                     if(_loc7_ || this)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           addr427:
                                                                                                                           if(_loc7_ || this)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr435:
                                                                                                                              §§push(_loc5_);
                                                                                                                              if(!(_loc6_ && this))
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 if(!(_loc6_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    if(_loc7_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                       if(_loc7_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(_loc7_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ && _loc1_))
                                                                                                                                             {
                                                                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr381:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      addr383:
                                                                                                                                                      §§push(this.§;y§);
                                                                                                                                                      if(_loc7_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().§&!3§(["Gold","Silver","Bronze"][_loc3_ - 1]);
                                                                                                                                                         addr395:
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            addr295:
                                                                                                                                                            this.§`]§.setVisibility(true);
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  this.§&$§ = true;
                                                                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_ && this)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr540);
                                                                                                                                                                        }
                                                                                                                                                                        return;
                                                                                                                                                                     }
                                                                                                                                                                     addr325:
                                                                                                                                                                     if(_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        addr327:
                                                                                                                                                                        §§goto(addr295);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr451);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr295);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr383);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr395);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr435);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr476);
                                                                                                                                                   }
                                                                                                                                                   §§push(this.§;y§);
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc6_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(_loc7_)
                                                                                                                                                         {
                                                                                                                                                            §§push(1);
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().§!8§(§§pop());
                                                                                                                                                               §§goto(addr325);
                                                                                                                                                            }
                                                                                                                                                            addr537:
                                                                                                                                                            §§goto(addr539);
                                                                                                                                                            §§push(§§pop() > 0);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr512);
                                                                                                                                                      }
                                                                                                                                                      addr536:
                                                                                                                                                      §§goto(addr537);
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr383);
                                                                                                                                                }
                                                                                                                                                §§goto(addr472);
                                                                                                                                             }
                                                                                                                                             §§goto(addr450);
                                                                                                                                          }
                                                                                                                                          §§goto(addr411);
                                                                                                                                       }
                                                                                                                                       §§goto(addr427);
                                                                                                                                    }
                                                                                                                                    §§goto(addr446);
                                                                                                                                 }
                                                                                                                                 §§goto(addr403);
                                                                                                                              }
                                                                                                                              §§goto(addr400);
                                                                                                                           }
                                                                                                                           §§goto(addr446);
                                                                                                                        }
                                                                                                                        §§goto(addr381);
                                                                                                                     }
                                                                                                                     §§goto(addr471);
                                                                                                                  }
                                                                                                                  §§goto(addr446);
                                                                                                               }
                                                                                                               §§goto(addr539);
                                                                                                            }
                                                                                                            §§goto(addr472);
                                                                                                         }
                                                                                                         §§goto(addr473);
                                                                                                      }
                                                                                                      §§goto(addr381);
                                                                                                   }
                                                                                                   §§goto(addr539);
                                                                                                }
                                                                                                §§goto(addr446);
                                                                                             }
                                                                                             §§goto(addr472);
                                                                                          }
                                                                                          §§goto(addr539);
                                                                                       }
                                                                                       §§pop();
                                                                                       §§goto(addr536);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr537);
                                                                              }
                                                                           }
                                                                           §§goto(addr539);
                                                                        }
                                                                        §§goto(addr532);
                                                                     }
                                                                     §§goto(addr539);
                                                                  }
                                                                  §§goto(addr537);
                                                               }
                                                               §§goto(addr520);
                                                            }
                                                            §§goto(addr327);
                                                         }
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                   §§goto(addr201);
                                                }
                                             }
                                          }
                                          §§goto(addr200);
                                       }
                                       §§goto(addr199);
                                    }
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr234);
                        }
                     }
                     §§goto(addr251);
                  }
               }
            }
         }
         §§goto(addr230);
      }
      
      public function run(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(Boolean(this.§@e§.§@B§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr162:
                        while(true)
                        {
                           §§push(§^!c§.§5!Y§.objects.mSardineCanAdded);
                           addr142:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                     }
                     addr161:
                  }
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc3_ || _loc3_))
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              loop6:
                              while(true)
                              {
                                 §§push(this.§]!y§);
                                 if(_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                    }
                                 }
                                 loop7:
                                 for(; !§§pop(); loop9:
                                 while(true)
                                 {
                                    if(!(_loc3_ || this))
                                    {
                                       continue loop7;
                                    }
                                    if(_loc2_ && param1)
                                    {
                                       continue loop4;
                                    }
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                this.initialize();
                                                while(true)
                                                {
                                                   if(!(_loc3_ || this))
                                                   {
                                                      break loop7;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                                §§goto(addr142);
                                                addr87:
                                             }
                                             else
                                             {
                                                if(_loc2_ && this)
                                                {
                                                   break;
                                                }
                                                §§goto(addr46);
                                             }
                                             addr38:
                                             if(_loc2_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             §§push(this.§9;§ == null);
                                             if(_loc2_)
                                             {
                                                continue loop9;
                                             }
                                             if(!_loc2_)
                                             {
                                                return §§pop();
                                             }
                                             addr99:
                                             if(_loc3_)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr142);
                                          }
                                          §§goto(addr99);
                                          §§push(true);
                                          addr136:
                                       }
                                       while(true)
                                       {
                                          this.updateAnimations(param1);
                                          if(!_loc2_)
                                          {
                                             §§goto(addr38);
                                          }
                                          §§goto(addr87);
                                       }
                                       §§goto(addr99);
                                    }
                                    else
                                    {
                                       §§goto(addr161);
                                    }
                                 },§§goto(addr162))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§&$§);
                                       continue loop7;
                                    }
                                 }
                                 if(_loc3_)
                                 {
                                    this.§`]§.setVisibility(false);
                                    §§goto(addr136);
                                 }
                                 else
                                 {
                                    §§goto(addr162);
                                 }
                              }
                           }
                        }
                        §§goto(addr118);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr162);
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:int = 0;
         if(!_loc5_)
         {
            if(this.§4!q§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§4!q§ = param1;
                  loop1:
                  while(_loc6_)
                  {
                     this.§3k§.setText(this.§&!s§(this.§4!q§));
                     loop2:
                     for(; this.§!J§; while(true)
                     {
                        if(_loc5_ && param1)
                        {
                           continue loop2;
                        }
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§goto(addr265);
                        §§push(§^!c§.§5!Y§.objects.mSardineCanAdded);
                     },continue loop1)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(this.§@e§.§@B§));
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc6_ || this))
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§pop();
                                             addr298:
                                             addr217:
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(this.§]!y§);
                                                if(!_loc5_)
                                                {
                                                   continue loop9;
                                                }
                                                addr239:
                                                if(_loc5_)
                                                {
                                                   while(!(_loc5_ && param1))
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!(_loc6_ || this))
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(_loc6_ || param1)
                                                      {
                                                         continue loop11;
                                                      }
                                                      addr308:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop2;
                                                      }
                                                   }
                                                   continue loop4;
                                                   addr265:
                                                }
                                             }
                                             addr172:
                                             §§push(Boolean(this.§!J§));
                                             if(Boolean(this.§!J§))
                                             {
                                                addr178:
                                                §§pop();
                                                addr179:
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§push(this.§4!q§);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§push(this.§!J§.§#!6§);
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc6_ || param1)
                                                            {
                                                               addr147:
                                                               §§push(§§pop() > §§pop());
                                                               if(_loc6_ || param3)
                                                               {
                                                                  addr154:
                                                                  if(!§§pop())
                                                                  {
                                                                     addr156:
                                                                     §§push(this.§ k§);
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        addr222:
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(§§pop().length <= 5)
                                                                           {
                                                                              addr98:
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr102:
                                                                                 §§push(this.§ k§);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(§§pop().length > 0);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc5_ && param3))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr118:
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr121:
                                                                                                §§push(!this.§9;§);
                                                                                                if(!(_loc5_ && param2))
                                                                                                {
                                                                                                   if(_loc6_ || this)
                                                                                                   {
                                                                                                      §§goto(addr44);
                                                                                                   }
                                                                                                   §§goto(addr147);
                                                                                                }
                                                                                                §§goto(addr118);
                                                                                             }
                                                                                             §§goto(addr178);
                                                                                          }
                                                                                          addr44:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc6_ || param2)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(!(_loc5_ && param2))
                                                                                                      {
                                                                                                         this.§&?§();
                                                                                                         addr66:
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(_loc5_ && param3)
                                                                                                               {
                                                                                                                  addr204:
                                                                                                                  addr206:
                                                                                                                  addr203:
                                                                                                                  addr205:
                                                                                                                  if((_loc4_ = this.§@e§.data.indexOf(this.§!J§) - 1) >= 0)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        this.§!J§ = this.§@e§.data[_loc4_];
                                                                                                                        addr216:
                                                                                                                        §§goto(addr172);
                                                                                                                        addr216:
                                                                                                                     }
                                                                                                                     §§goto(addr216);
                                                                                                                  }
                                                                                                                  this.§!J§ = null;
                                                                                                                  addr193:
                                                                                                                  §§goto(addr172);
                                                                                                                  addr225:
                                                                                                               }
                                                                                                               §§goto(addr22);
                                                                                                            }
                                                                                                            §§goto(addr193);
                                                                                                         }
                                                                                                         §§goto(addr121);
                                                                                                      }
                                                                                                      §§goto(addr179);
                                                                                                   }
                                                                                                   §§goto(addr156);
                                                                                                }
                                                                                                §§goto(addr98);
                                                                                             }
                                                                                             §§goto(addr66);
                                                                                          }
                                                                                          addr22:
                                                                                          return;
                                                                                       }
                                                                                       §§goto(addr172);
                                                                                    }
                                                                                    §§goto(addr118);
                                                                                 }
                                                                                 addr170:
                                                                                 §§pop().pop();
                                                                              }
                                                                              §§goto(addr156);
                                                                           }
                                                                           §§goto(addr170);
                                                                           §§push(this.§ k§);
                                                                        }
                                                                        §§pop().unshift(this.§!J§);
                                                                        §§goto(addr225);
                                                                     }
                                                                     §§goto(addr102);
                                                                  }
                                                                  §§goto(addr222);
                                                                  §§push(this.§ k§);
                                                               }
                                                               §§goto(addr172);
                                                            }
                                                            §§goto(addr204);
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      §§goto(addr203);
                                                   }
                                                   §§goto(addr205);
                                                }
                                                §§goto(addr216);
                                             }
                                             §§goto(addr154);
                                          }
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!(_loc6_ || param3))
                                                      {
                                                         break loop2;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         return;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr298);
                                             }
                                          }
                                          §§goto(addr217);
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr308);
                              }
                           }
                        }
                     }
                     return;
                  }
               }
            }
            return;
         }
         §§goto(addr343);
      }
      
      private function §2!k§(param1:§9!o§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§?"§);
            loop0:
            while(true)
            {
               §§pop().setVisibility(param1.§&d§ <= 3);
               loop1:
               while(true)
               {
                  §§push(param1.§&d§ > 0);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr134:
                           while(!(_loc2_ && param1))
                           {
                              §§push(param1.§&d§ <= 3);
                              if(!(_loc3_ || this))
                              {
                                 continue loop3;
                              }
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && param1))
                           {
                              while(true)
                              {
                                 §§push(this.§?"§);
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 §§pop().§&!3§(["Gold","Silver","Bronze"][param1.§&d§ - 1]);
                              }
                              addr100:
                           }
                           while(!_loc2_)
                           {
                           }
                           §§goto(addr134);
                           addr123:
                        }
                        loop7:
                        while(true)
                        {
                           this.§`!%§.setText(param1.§&d§.toString());
                           while(true)
                           {
                              this.§`X§.setText(this.§&!s§(param1.§#!6§));
                              while(!(_loc2_ && this))
                              {
                                 this.§@!o§(param1);
                                 if(!(_loc3_ || this))
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    break loop7;
                                 }
                                 §§goto(addr123);
                              }
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§1!=§ = null;
         for each(_loc2_ in [this.§#!q§,this.§[R§,this.§#!q§])
         {
            if(!_loc5_)
            {
               this.§'!R§(_loc2_,param1,true);
            }
         }
      }
      
      private function §@!o§(param1:§9!o§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§!o§.§#7§(param1.userId));
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:String = param1.userId;
         if(_loc5_)
         {
            this.§1P§ = param1;
         }
         loop0:
         do
         {
            this.§2!1§();
            while(true)
            {
               this.§^F§ = new §4!&§(_loc3_,"",false,§?!a§.NORMAL);
               while(_loc5_ || param1)
               {
                  this.§2f§(this.§"X§,this.§^F§);
                  do
                  {
                     this.§"+§(param1.userName,this.§>!M§,this.§&!m§.getItemByName("EnemyNameMask").mClip);
                  }
                  while(!(_loc5_ || this));
                  
                  if(_loc5_ || _loc3_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc5_);
         
      }
      
      private function §"+§(param1:String, param2:§?!x§, param3:MovieClip) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1);
            while(true)
            {
               if(§§pop().length <= 6)
               {
                  param2.mClip.mask = null;
                  loop1:
                  while(true)
                  {
                     param3.visible = false;
                     while(true)
                     {
                        if(_loc5_)
                        {
                           if(!_loc5_)
                           {
                              while(true)
                              {
                                 param3.visible = true;
                                 addr89:
                                 while(true)
                                 {
                                 }
                              }
                              addr98:
                           }
                           while(true)
                           {
                              param2.setText(param1);
                              if(_loc4_)
                              {
                                 break;
                              }
                              continue loop1;
                              §§goto(addr89);
                           }
                           continue;
                        }
                        §§goto(addr89);
                     }
                  }
               }
               while(true)
               {
                  param2.mClip.mask = param3;
                  §§goto(addr98);
               }
               §§push(param1);
               if(!_loc4_)
               {
                  return §§pop();
               }
            }
         }
         §§goto(addr89);
      }
      
      private function §2f§(param1:§1!=§, param2:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         while(true)
         {
            if(param1.mClip.numChildren <= 0)
            {
               if(_loc4_ || param2)
               {
                  param1.mClip.addChild(param2);
               }
               if(_loc4_)
               {
                  break;
               }
            }
            else
            {
               param1.mClip.removeChildAt(0);
            }
         }
      }
      
      private function § !4§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push((AngryBirdsFP11.sUserProgress as §![§).avatarString);
         if(!(_loc4_ && this))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push((AngryBirdsFP11.sUserProgress as §![§).§-H§);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            this.§6&§();
            do
            {
               this.§%!u§ = new §4!&§(_loc2_,"",false,§?!a§.NORMAL);
               do
               {
                  this.§2f§(this.§3A§,this.§%!u§);
               }
               while(_loc4_);
               
            }
            while(_loc4_ && _loc2_);
            
         }
      }
      
      private function §-I§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§ !4§();
         }
      }
      
      private function §2!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§^F§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr80:
                     this.§^F§.dispose();
                  }
                  do
                  {
                     this.§^F§ = null;
                  }
                  while(_loc1_ && this);
                  
                  addr60:
               }
               return;
            }
            §§goto(addr80);
         }
         §§goto(addr60);
      }
      
      private function §6&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§%!u§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§%!u§);
                     addr70:
                     while(true)
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§%!u§ = null;
                        }
                        while(_loc1_);
                        
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr68:
               }
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr68);
      }
      
      public function set §%O§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§]!y§ = param1;
         }
         do
         {
            §§push(this.§`]§);
            §§push(this.§]!y§);
            if(!_loc3_)
            {
               §§push(!§§pop());
            }
            §§pop().setVisibility(§§pop());
         }
         while(_loc3_);
         
      }
      
      private function §&?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§9;§ = this.§ k§.pop();
            while(true)
            {
               this.§2N§ = §-!,§.§7!j§.§,!`§(this.§1!$§.mClip,{"x":this.§6!H§ + 15},{"x":this.§6!H§},0.5,§-!,§.§;!z§);
               loop1:
               while(true)
               {
                  §§push(this.§2N§);
                  loop2:
                  while(true)
                  {
                     §§pop().onComplete = this.§<H§;
                     addr68:
                     while(!_loc2_)
                     {
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      private function §<H§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(_loc3_)
         {
            this.§2N§ = null;
         }
         loop0:
         while(true)
         {
            §§push(this.§[R§);
            loop1:
            while(true)
            {
               §§pop().§&!3§("Start");
               if(!_loc4_)
               {
                  while(true)
                  {
                     §§push(this.§[R§);
                     loop3:
                     while(true)
                     {
                        §§push(true);
                        addr57:
                        while(true)
                        {
                           §§pop().§;,§ = §§pop();
                           addr58:
                           addr86:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 §§push(this.§[R§);
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                           }
                           addr86:
                        }
                     }
                  }
                  addr53:
               }
               else
               {
                  §§goto(addr86);
               }
               addr98:
               var _loc1_:§9!o§ = §§pop()[this.§ k§.length - 1];
               if(_loc3_ || _loc1_)
               {
                  addr464:
                  if(!(this.§9;§.§&d§ == 1 || _loc1_ == null))
                  {
                     this.§2N§ = §-!,§.§7!j§.§,!`§(this.§1!$§.mClip,{"x":this.§6!H§},null,0.5);
                     addr394:
                     if(!_loc4_)
                     {
                        addr365:
                        §§push(this.§2N§);
                        if(!(_loc4_ && _loc2_))
                        {
                           if(_loc3_)
                           {
                              §§pop().onComplete = null;
                              addr376:
                              §§push(this.§2N§);
                              if(!_loc4_)
                              {
                                 §§pop().play();
                                 this.§2!k§(_loc1_);
                                 addr341:
                                 _loc2_ = _loc1_.§&d§ + 1;
                                 addr361:
                                 addr354:
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr319:
                                    §§push(this.§;y§);
                                    if(_loc3_)
                                    {
                                       §§push(_loc2_ <= 3);
                                       if(!_loc4_)
                                       {
                                          §§pop().setVisibility(§§pop());
                                          addr327:
                                          if(!(_loc4_ && this))
                                          {
                                             addr279:
                                             §§push(_loc2_ > 0);
                                             if(!_loc4_)
                                             {
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§push(§§pop());
                                                   if(_loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr293:
                                                         §§pop();
                                                         addr294:
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               if(_loc3_ || _loc1_)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(3);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(§§pop() <= §§pop());
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr247:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr249:
                                                                                       §§push(this.§;y§);
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          §§push("Gold");
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             §§pop().§&!3§(null[_loc2_ - 1]);
                                                                                             addr273:
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr178:
                                                                                                §§push(this.§&f§);
                                                                                                if(_loc3_ || this)
                                                                                                {
                                                                                                   §§pop().setText(_loc2_.toString());
                                                                                                   addr191:
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(!(_loc4_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  if(_loc3_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        this.§<+§ = §-!,§.§7!j§.§,!`§(this.§?r§.mClip,{"y":this.§&T§},{"y":-150},2,§-!,§.§;!z§);
                                                                                                                        addr140:
                                                                                                                        this.§<+§.onComplete = this.§-!m§;
                                                                                                                        addr143:
                                                                                                                        if(!(_loc4_ && _loc1_))
                                                                                                                        {
                                                                                                                           if(_loc3_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(this.§<+§);
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§pop().play();
                                                                                                                                 if(!(_loc4_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    if(_loc3_ || this)
                                                                                                                                    {
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr249);
                                                                                                                                       }
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          addr427:
                                                                                                                                          this.§2N§.onComplete = this.§3V§;
                                                                                                                                          addr422:
                                                                                                                                          this.§2N§.play();
                                                                                                                                          addr417:
                                                                                                                                          this.§;y§.§&!3§("Gold");
                                                                                                                                          addr408:
                                                                                                                                          this.§&f§.setText("1");
                                                                                                                                          addr416:
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             addr400:
                                                                                                                                             §§push(this.§;y§);
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr416);
                                                                                                                                             }
                                                                                                                                             addr403:
                                                                                                                                             §§pop().setVisibility(true);
                                                                                                                                             addr108:
                                                                                                                                             return;
                                                                                                                                             addr404:
                                                                                                                                          }
                                                                                                                                          this.§2N§ = §-!,§.§7!j§.§,!`§(this.§1!$§.mClip,{"x":this.§?r§.mClip.x},null,0.5);
                                                                                                                                          addr458:
                                                                                                                                          §§goto(addr458);
                                                                                                                                          addr430:
                                                                                                                                          addr418:
                                                                                                                                          addr469:
                                                                                                                                          addr423:
                                                                                                                                       }
                                                                                                                                       §§goto(addr108);
                                                                                                                                    }
                                                                                                                                    §§goto(addr191);
                                                                                                                                 }
                                                                                                                                 §§goto(addr143);
                                                                                                                              }
                                                                                                                              §§goto(addr140);
                                                                                                                           }
                                                                                                                           §§goto(addr273);
                                                                                                                        }
                                                                                                                        addr177:
                                                                                                                        §§goto(addr177);
                                                                                                                     }
                                                                                                                     §§goto(addr478);
                                                                                                                  }
                                                                                                                  §§goto(addr430);
                                                                                                               }
                                                                                                               §§goto(addr418);
                                                                                                            }
                                                                                                            §§goto(addr404);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr361);
                                                                                                   }
                                                                                                   §§goto(addr294);
                                                                                                }
                                                                                                §§goto(addr408);
                                                                                             }
                                                                                             addr465:
                                                                                             this.§?r§.setVisibility(false);
                                                                                             §§goto(addr469);
                                                                                          }
                                                                                          §§goto(addr417);
                                                                                       }
                                                                                       §§goto(addr319);
                                                                                    }
                                                                                    §§goto(addr178);
                                                                                 }
                                                                                 §§goto(addr477);
                                                                              }
                                                                              §§goto(addr464);
                                                                           }
                                                                           §§goto(addr293);
                                                                        }
                                                                        §§goto(addr279);
                                                                     }
                                                                     §§goto(addr341);
                                                                  }
                                                                  §§goto(addr279);
                                                               }
                                                               §§goto(addr394);
                                                            }
                                                            §§goto(addr376);
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                }
                                                §§goto(addr464);
                                             }
                                             §§goto(addr293);
                                          }
                                          §§goto(addr354);
                                       }
                                       §§goto(addr403);
                                    }
                                    §§goto(addr400);
                                 }
                                 §§goto(addr416);
                              }
                              §§goto(addr365);
                           }
                           §§goto(addr427);
                        }
                        §§goto(addr422);
                     }
                     §§goto(addr423);
                  }
               }
               §§goto(addr465);
            }
         }
      }
      
      private function §-!m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§<+§ = null;
            while(true)
            {
               this.§9;§ = null;
               addr43:
               if(!(_loc1_ || this))
               {
                  continue;
               }
               this.§&?§();
               addr19:
               return;
               addr52:
            }
         }
         while(this.§ k§.length > 0)
         {
            if(!_loc2_)
            {
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr43);
            }
            §§goto(addr52);
         }
         §§goto(addr19);
      }
      
      private function §3V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§2N§ = null;
            do
            {
               this.§9;§ = null;
            }
            while(!_loc1_);
            
         }
      }
      
      private function §&!s§(param1:int) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:* = param1.toString();
         var _loc3_:Array = [];
         if(_loc7_)
         {
            §§push(_loc2_);
            loop0:
            while(§§pop().length % 3 > 0)
            {
               if(_loc7_)
               {
                  _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc7_ || _loc3_)
                  {
                     §§push(§§pop().slice(_loc2_.length % 3));
                  }
                  if(_loc8_)
                  {
                     break;
                  }
                  _loc2_ = §§pop();
                  if(!_loc8_)
                  {
                     addr92:
                     break loop0;
                  }
               }
            }
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc7_)
                  {
                     while(true)
                     {
                        if(§§pop().length <= 0)
                        {
                           if(_loc7_)
                           {
                              addr129:
                              var _loc5_:int = 0;
                              if(!(_loc8_ && _loc2_))
                              {
                                 var _loc6_:* = _loc3_;
                                 if(_loc7_ || _loc3_)
                                 {
                                    loop5:
                                    while(§§hasnext(_loc6_,_loc5_))
                                    {
                                       §§push(§§nextvalue(_loc5_,_loc6_));
                                       if(_loc7_ || this)
                                       {
                                          _loc4_ = §§pop();
                                          if(!(_loc7_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc7_ || _loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop() + (_loc4_ + ","));
                                                }
                                                addr177:
                                             }
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                continue loop5;
                                             }
                                          }
                                       }
                                       §§goto(addr177);
                                    }
                                    addr196:
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    §§push(_loc2_);
                                    break loop3;
                                 }
                                 §§goto(addr169);
                              }
                              §§goto(addr196);
                           }
                           break;
                        }
                        _loc3_.push(_loc2_.substr(0,3));
                        if(_loc8_)
                        {
                           break;
                        }
                        §§push(_loc2_);
                        if(!(_loc8_ && _loc2_))
                        {
                           §§push(3);
                           if(_loc7_ || _loc2_)
                           {
                              §§push(§§pop().substr(§§pop()));
                              if(!(_loc8_ && this))
                              {
                                 _loc2_ = §§pop();
                                 if(!_loc8_)
                                 {
                                    if(false)
                                    {
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr129);
                              }
                              addr220:
                              _loc2_ = §§pop();
                              §§goto(addr196);
                           }
                           addr208:
                           §§push(§§pop().substr(§§pop(),_loc2_.length - 1));
                           if(_loc7_ || this)
                           {
                              §§goto(addr220);
                           }
                           break loop3;
                        }
                        continue;
                        §§goto(addr196);
                     }
                     §§push(_loc2_);
                     if(_loc7_ || _loc3_)
                     {
                        §§goto(addr208);
                        return 0;
                     }
                     break;
                  }
                  break;
               }
               return §§pop();
            }
         }
         §§goto(addr92);
      }
      
      private function §'!R§(param1:§1!=§, param2:Number, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(!(_loc6_ && this))
         {
            §§push(param1.§;,§);
            loop0:
            while(true)
            {
               if(§§pop() == true)
               {
                  loop1:
                  while(true)
                  {
                     §§push(param1.§@!5§(param2));
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop());
                        if(!(_loc6_ && param1))
                        {
                           addr105:
                           §§push(_loc4_ = §§pop());
                        }
                        if(§§pop() != "End")
                        {
                           break;
                        }
                        while(true)
                        {
                           param1.§;,§ = false;
                           continue loop0;
                           addr55:
                           if(!(_loc6_ && this))
                           {
                              param1.setVisibility(false);
                              addr65:
                              if(_loc5_ || param1)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr105);
                  }
               }
               addr27:
               return;
            }
         }
         §§goto(addr109);
      }
      
      private function §6!+§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§`S§ = null;
         var _loc2_:§9!7§ = null;
         for each(_loc1_ in this.§@e§.data)
         {
            if(_loc5_ || _loc1_)
            {
               if(!(_loc1_ is §9!o§))
               {
                  continue;
               }
            }
            _loc2_ = new §9!7§(_loc1_.userId,"",false,§?!a§.NORMAL);
            if(!_loc6_)
            {
               _loc2_.dispose();
            }
         }
      }
   }
}
