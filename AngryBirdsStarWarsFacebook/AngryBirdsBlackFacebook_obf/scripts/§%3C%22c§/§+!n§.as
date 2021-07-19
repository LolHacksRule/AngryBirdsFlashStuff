package §<"c§
{
   import §"a§.§`!,§;
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§^"m§;
   import §1!i§.§5!L§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   import flash.geom.Rectangle;
   
   public class §+!n§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelStartState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §^!7§ = "LevelStartState";
         }
      }
      
      private var §@!U§:Boolean = false;
      
      private var §6# §:Boolean = false;
      
      private var §2#$§:§`!,§ = null;
      
      private var §"#P§:Boolean = false;
      
      private var §2!k§:Boolean = false;
      
      private var §?"P§:Number = 0;
      
      private var §?!9§:Number = 0;
      
      private var §6#,§:Number = 0;
      
      private var §1#Z§:Number = 0;
      
      private var §"i§:Number;
      
      private var §&4§:Number;
      
      private var § get§:Number;
      
      private var §with§:Number;
      
      private var §<!l§:§5!L§;
      
      public function §+!n§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            loop0:
            while(true)
            {
               §@;§ = new §]#[§(this);
               loop1:
               while(true)
               {
                  §@;§.init(§&$§.§@8§.Views.View_LevelStart[0]);
                  while(true)
                  {
                     this.§2#$§ = new §`!,§(§,!q§.§9!,§,§+!b§);
                     continue loop1;
                     addr61:
                     if(_loc2_ || _loc1_)
                     {
                        loop7:
                        while(true)
                        {
                           this.§with§ = §@;§.getItemByName("Button_RightMenuOpen").y - 50;
                           if(!(_loc1_ && _loc2_))
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr88:
                              while(!(_loc1_ && this))
                              {
                                 this.§ get§ = §@;§.getItemByName("Button_LeftMenuOpen").y - 50;
                              }
                              continue loop1;
                              addr88:
                           }
                           while(!_loc1_)
                           {
                              §§goto(addr61);
                              continue loop7;
                           }
                           addr105:
                           while(true)
                           {
                              this.§&4§ = (§@;§.getItemByName("Container_MenuRightButtons") as § #^§).height;
                              §§goto(addr88);
                           }
                        }
                        return;
                        addr78:
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §,!q§.§9!,§.§]"J§(true);
               while(true)
               {
                  §,!q§.§3!Q§(this.§2#$§);
                  addr113:
                  while(!_loc3_)
                  {
                     this.§2#$§.init();
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §4#;§.singleton.playThemeMusic();
            §§goto(addr95);
         }
         §§goto(addr48);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.update(param1);
            loop0:
            while(true)
            {
               this.§ get§ = §@;§.getItemByName("Button_LeftMenuOpen").y - 50;
               addr97:
               while(true)
               {
                  this.§with§ = §@;§.getItemByName("Button_RightMenuOpen").y - 50;
                  continue loop0;
               }
            }
         }
         §§goto(addr55);
      }
      
      private function §6§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§@;§.getItemByName("Container_MenuLeftButtons") as § #^§).mClip.scrollRect = new Rectangle(0,0,(§@;§.getItemByName("Container_MenuLeftButtons") as § #^§).width,this.§"i§ + 20 - (this.§"i§ - this.§6#,§));
            loop0:
            while(true)
            {
               (§@;§.getItemByName("Container_MenuRightButtons") as § #^§).mClip.scrollRect = new Rectangle(0,0,(§@;§.getItemByName("Container_MenuRightButtons") as § #^§).width,this.§&4§ + 20 - (this.§&4§ - this.§1#Z§));
               loop1:
               while(true)
               {
                  §§push(this.§"#P§);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           (§@;§.getItemByName("Container_MenuLeftButtons") as § #^§).setVisibility(true);
                           addr802:
                           while(true)
                           {
                              §§push(this.§?"P§);
                              addr771:
                              while(true)
                              {
                                 §§push(90);
                                 addr772:
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§?"P§);
                                          if(!_loc2_)
                                          {
                                             §§push(0.3);
                                             if(_loc3_ || this)
                                             {
                                                §§push(§§pop() * param1);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().§?"P§ = §§pop();
                                          addr790:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr773:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§?"P§);
                                       addr762:
                                       while(true)
                                       {
                                          §§push(90);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr795:
                     }
                     else
                     {
                        §§push(this.§?"P§);
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§?"P§);
                                    if(!_loc2_)
                                    {
                                       §§push(0.3);
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§pop().§?"P§ = §§pop();
                                    while(true)
                                    {
                                       loop61:
                                       while(_loc3_ || this)
                                       {
                                          (§@;§.getItemByName("Container_MenuRightButtons") as § #^§).y = (§@;§.getItemByName("Container_MenuRightButtons") as § #^§).y - 0.5 * param1;
                                          loop58:
                                          while(true)
                                          {
                                             loop59:
                                             while(true)
                                             {
                                                §§push(this.§?!9§);
                                                loop66:
                                                while(!_loc2_)
                                                {
                                                   §§push(180);
                                                   loop74:
                                                   while(true)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            this.§?!9§ = 180;
                                                            addr546:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr543:
                                                      }
                                                      loop77:
                                                      while(true)
                                                      {
                                                         §§push(this.§1#Z§);
                                                         loop67:
                                                         for(; _loc3_; continue loop77)
                                                         {
                                                            §§push(this.§&4§);
                                                            loop68:
                                                            while(true)
                                                            {
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  loop69:
                                                                  while(_loc3_ || param1)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§1#Z§);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(0.5);
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              §§push(§§pop() * param1);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§pop().§1#Z§ = §§pop();
                                                                        loop70:
                                                                        while(!(_loc2_ && _loc3_))
                                                                        {
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              addr528:
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§1#Z§);
                                                                                    addr409:
                                                                                    while(_loc3_)
                                                                                    {
                                                                                       continue loop68;
                                                                                    }
                                                                                    §§goto(addr771);
                                                                                 }
                                                                                 addr406:
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(this.§6#,§);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(0.5);
                                                                                          if(!(_loc2_ && this))
                                                                                          {
                                                                                             §§push(§§pop() * param1);
                                                                                          }
                                                                                          §§push(§§pop() - §§pop());
                                                                                       }
                                                                                       §§pop().§6#,§ = §§pop();
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§6#,§);
                                                                                             loop18:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc2_ && param1))
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   loop19:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      loop20:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         (§@;§.getItemByName("Container_MenuLeftButtons") as § #^§).setVisibility(false);
                                                                                                         addr658:
                                                                                                         loop21:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§6#,§ = 0;
                                                                                                            loop22:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  if(!(_loc2_ && _loc3_))
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  loop23:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        loop24:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§6#,§);
                                                                                                                           addr723:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§"i§);
                                                                                                                              addr725:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          this.§6#,§ = this.§"i§;
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr179:
                                                                                                                                             if(!(_loc3_ || this))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                (§@;§.getItemByName("Button_RightMenuOpen") as §^"m§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      (§@;§.getItemByName("Button_LeftMenuOpen") as §^"m§).mClip.MovieClip_LeftMenuImage.rotation = this.§?"P§;
                                                                                                                                                      loop50:
                                                                                                                                                      while(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         (§@;§.getItemByName("Button_RightMenuOpen") as §^"m§).mClip.MovieClip_RightMenuImage.rotation = this.§?!9§;
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc2_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§@;§.getItemByName("Container_MenuLeftButtons") as § #^§);
                                                                                                                                                                  §§push(this.§ get§);
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - this.§6#,§);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc3_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop70;
                                                                                                                                                                     }
                                                                                                                                                                     while(_loc3_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop58;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr179);
                                                                                                                                                                     }
                                                                                                                                                                     loop57:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           this.§1#Z§ = 0;
                                                                                                                                                                           addr193:
                                                                                                                                                                           if(!(_loc3_ || param1))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop0;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              (§@;§.getItemByName("Button_LeftMenuOpen") as §^"m§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                                                                                                              §§goto(addr170);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop58;
                                                                                                                                                                           addr160:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           loop54:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr201:
                                                                                                                                                                              loop55:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§1#Z§);
                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       if(!_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() >= §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop54;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             (§@;§.getItemByName("Container_MenuRightButtons") as § #^§).setVisibility(false);
                                                                                                                                                                                             continue loop57;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          loop64:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop19;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() >= §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop59;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop22;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr615:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop21;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            (§@;§.getItemByName("Container_MenuRightButtons") as § #^§).setVisibility(true);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§?!9§);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr569:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop37:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc2_ && param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop74;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!(_loc2_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop20;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(this);
                                                                                                                                                                                                               §§push(this.§?!9§);
                                                                                                                                                                                                               if(!_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(0.5);
                                                                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * param1);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().§?!9§ = §§pop();
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  (§@;§.getItemByName("Container_MenuRightButtons") as § #^§).y = (§@;§.getItemByName("Container_MenuRightButtons") as § #^§).y + 0.5 * param1;
                                                                                                                                                                                                                  continue loop0;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop21;
                                                                                                                                                                                                            addr391:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr295:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§?!9§);
                                                                                                                                                                                                            addr298:
                                                                                                                                                                                                            addr366:
                                                                                                                                                                                                            while(!(_loc2_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop18;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc3_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop37;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr298);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() < §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§?"P§ = 0;
                                                                                                                                                                                                                  break loop15;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr696:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr659:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§6#,§);
                                                                                                                                                                                                               break loop59;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr695:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr772);
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr569);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc3_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§?!9§ = 0;
                                                                                                                                                                                                                  addr331:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop16;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop69;
                                                                                                                                                                                                                           addr440:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§1#Z§);
                                                                                                                                                                                                                           addr225:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc2_ && _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break loop55;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop67;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop66;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop64;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr762);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§"i§);
                                                                                                                                                                                                                                    addr738:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop23;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop24;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr298);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr762);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr391);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr328:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break loop15;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc2_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc2_ && param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop23;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop54;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr461:
                                                                                                                                                                                                            this.§1#Z§ = this.§&4§;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr570);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr314:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr222);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr313:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr298);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       addr694:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr695);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr225);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr409);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr160);
                                                                                                                                                                           addr294:
                                                                                                                                                                        }
                                                                                                                                                                        addr733:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr736);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr170:
                                                                                                                                                                  }
                                                                                                                                                                  continue loop70;
                                                                                                                                                               }
                                                                                                                                                               continue loop1;
                                                                                                                                                            }
                                                                                                                                                            continue loop50;
                                                                                                                                                            if(!(_loc3_ || param1))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc2_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc2_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc2_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc2_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                 §§push(this.§1#Z§);
                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0.5);
                                                                                                                                                                                    if(!_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * param1);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().§1#Z§ = §§pop();
                                                                                                                                                                                 §§goto(addr294);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr546);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr405);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop0;
                                                                                                                                                                     addr266:
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc3_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     return;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr331);
                                                                                                                                                                  §§goto(addr314);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr212);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr193);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr790);
                                                                                                                                                      }
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr795);
                                                                                                                                                }
                                                                                                                                                §§goto(addr802);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr733);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr802);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr726:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop2;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr773);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr726);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop16;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr696);
                                                                                    }
                                                                                    §§goto(addr528);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr659);
                                                                                 }
                                                                              }
                                                                              §§goto(addr723);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr624);
                                                                           }
                                                                        }
                                                                        continue loop61;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  §§goto(addr543);
                                                               }
                                                               §§goto(addr406);
                                                            }
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr663);
                                             }
                                          }
                                          addr603:
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr694);
                              }
                           }
                        }
                     }
                     §§goto(addr763);
                  }
               }
            }
         }
         §§goto(addr328);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            (§@;§.getItemByName("Button_Play") as §^"m§).setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
            do
            {
               this.§@!U§ = false;
               do
               {
                  super.deActivate();
               }
               while(_loc2_);
               
            }
            while(_loc2_);
            
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(_loc7_ || param2)
         {
            if("OPEN_LEFT_MENU" === _loc6_)
            {
               if(!(_loc8_ && param3))
               {
                  §§push(0);
                  if(_loc8_ && param3)
                  {
                     addr497:
                  }
               }
               else
               {
                  addr429:
                  §§push(2);
                  if(!_loc7_)
                  {
                  }
               }
            }
            else if("OPEN_RIGHT_MENU" === _loc6_)
            {
               if(_loc7_)
               {
                  §§push(1);
                  if(_loc8_ && this)
                  {
                     addr516:
                  }
               }
               else
               {
                  §§goto(addr429);
               }
            }
            else if("PLAY_LEVEL" === _loc6_)
            {
               if(!_loc8_)
               {
                  §§goto(addr429);
               }
               else
               {
                  addr508:
                  §§push(8);
                  if(!(_loc8_ && param3))
                  {
                     §§goto(addr516);
                  }
               }
            }
            else if("OPEN_MENU" === _loc6_)
            {
               if(!_loc8_)
               {
                  §§push(3);
                  if(!_loc7_)
                  {
                     addr450:
                  }
               }
               else
               {
                  addr475:
                  §§push(6);
                  if(_loc7_ || param3)
                  {
                  }
               }
            }
            else if("OPEN_AVATAR_CREATOR" === _loc6_)
            {
               if(!_loc8_)
               {
                  §§push(4);
                  if(_loc7_)
                  {
                     §§goto(addr450);
                  }
               }
               else
               {
                  §§goto(addr508);
               }
            }
            else if("TOGGLE_SOUNDS" === _loc6_)
            {
               if(!_loc8_)
               {
                  §§push(5);
                  if(_loc8_ && param3)
                  {
                     §§goto(addr516);
                  }
               }
               else
               {
                  addr527:
                  §§push(9);
                  if(_loc8_)
                  {
                     addr549:
                  }
               }
            }
            else if("TOGGLE_PARTICLES" === _loc6_)
            {
               if(!(_loc8_ && this))
               {
                  §§goto(addr475);
               }
               else
               {
                  §§goto(addr508);
               }
            }
            else if("FULLSCREEN_BUTTON" === _loc6_)
            {
               if(_loc7_)
               {
                  §§push(7);
                  if(_loc7_ || this)
                  {
                     §§goto(addr497);
                  }
                  else
                  {
                     addr580:
                  }
               }
               else
               {
                  §§goto(addr527);
               }
            }
            else if("OPEN_CREDITS" === _loc6_)
            {
               if(_loc7_ || param1)
               {
                  §§goto(addr508);
               }
               else
               {
                  addr560:
                  §§push(11);
                  if(!_loc7_)
                  {
                     §§goto(addr580);
                  }
               }
            }
            else if("CREDITS_BUTTON" === _loc6_)
            {
               if(_loc7_ || param2)
               {
                  §§goto(addr527);
               }
               else
               {
                  §§goto(addr560);
               }
            }
            else
            {
               if("SOUNDS_BUTTON" === _loc6_)
               {
                  if(!(_loc8_ && this))
                  {
                     §§push(10);
                     if(!(_loc8_ && param1))
                     {
                        §§goto(addr549);
                     }
                  }
               }
               else if("POPUP_CREDITS_CLOSE" === _loc6_)
               {
                  if(_loc7_ || param1)
                  {
                     §§goto(addr560);
                  }
               }
               else if("ME_POPUP_VIDEO" !== _loc6_)
               {
                  addr585:
                  loop7:
                  switch(§§pop())
                  {
                     case 0:
                        addr374:
                        if(this.§"#P§)
                        {
                           addr375:
                           this.§"#P§ = false;
                           addr378:
                        }
                        else
                        {
                           this.§"#P§ = true;
                           addr369:
                        }
                        break;
                     case 1:
                        addr356:
                        §§push(this.§2!k§);
                        if(!_loc8_)
                        {
                           if(§§pop())
                           {
                              addr359:
                              this.§2!k§ = false;
                              addr362:
                           }
                           else
                           {
                              this.§2!k§ = true;
                              addr350:
                           }
                           addr337:
                           break;
                        }
                        §§goto(addr374);
                        break;
                     case 2:
                        §?!r§.§"#_§("Menu_Confirm");
                        § g§(§"C§.§^!7§);
                        break;
                        addr343:
                        addr336:
                     case 3:
                        §@;§.setItemVisibility("Container_MenuButtons",!§@;§.getItemByName("Container_MenuButtons").visible);
                        break;
                        addr330:
                     case 4:
                        break;
                     case 5:
                        break;
                     case 6:
                        §§push(§,!q§.§0@§());
                        if(_loc7_)
                        {
                           if(_loc7_)
                           {
                              addr310:
                              _loc4_ = !§§pop();
                              if(_loc7_ || param3)
                              {
                                 §,!q§.§%Q§(_loc4_);
                                 §@;§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                                 addr273:
                                 if(!(_loc8_ && param2))
                                 {
                                    break;
                                 }
                                 addr285:
                              }
                              break;
                           }
                           §§goto(addr356);
                           §§goto(addr359);
                        }
                        §§goto(addr310);
                     case 7:
                        §?!r§.§"#_§("Menu_Confirm");
                        addr263:
                        if(_loc7_)
                        {
                           addr255:
                           §4#;§.singleton.§5"q§();
                           break;
                           addr256:
                        }
                        else
                        {
                           §§goto(addr343);
                        }
                        break;
                     case 8:
                        §?!r§.§"#_§("Menu_Confirm");
                        addr247:
                        if(!_loc8_)
                        {
                           if(!_loc8_)
                           {
                              break;
                           }
                           §§goto(addr350);
                        }
                        else
                        {
                           §§goto(addr273);
                        }
                        §§goto(addr337);
                     case 9:
                        §?!r§.§"#_§("Menu_Confirm");
                        § g§(§`!O§.§^!7§);
                        addr226:
                        if(!(_loc8_ && param1))
                        {
                           this.§"#P§ = false;
                           if(_loc7_ || param1)
                           {
                              break;
                           }
                           break;
                        }
                        §§goto(addr285);
                        break;
                        addr240:
                     case 10:
                        §?!r§.§"#_§("Menu_Confirm");
                        addr201:
                        if(!(_loc8_ && param1))
                        {
                           §§push(§4#;§.§]q§());
                           while(true)
                           {
                              if(_loc7_ || this)
                              {
                                 §§push(!§§pop());
                                 loop1:
                                 while(true)
                                 {
                                    _loc5_ = §§pop();
                                    addr187:
                                    while(true)
                                    {
                                       if(_loc7_ || this)
                                       {
                                          §4#;§.§2!>§(_loc5_);
                                          continue loop1;
                                       }
                                       §§goto(addr240);
                                    }
                                 }
                                 §§goto(addr226);
                              }
                              else
                              {
                                 §§goto(addr310);
                              }
                           }
                           break;
                        }
                        §§goto(addr330);
                        break;
                     case 11:
                        break;
                     case 12:
                        if(this.§<!l§ == null)
                        {
                           if(_loc7_ || param2)
                           {
                              if(_loc7_ || param2)
                              {
                                 this.§<!l§ = new §5!L§("http://www.youtube.com/v/-eyig_V-_5o");
                                 loop3:
                                 for(; !_loc8_; if(_loc8_ && this)
                                 {
                                    continue;
                                 },if(_loc7_)
                                 {
                                    if(!_loc8_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr49);
                                       }
                                       addr379:
                                       break loop7;
                                    }
                                    §§goto(addr362);
                                 },§§goto(addr201))
                                 {
                                    if(_loc7_ || param3)
                                    {
                                       while(true)
                                       {
                                          (§@;§.getItemByName("MovieClip_YouTubeArea") as §0"$§).changeMovieClip(this.§<!l§);
                                          if(_loc7_ || this)
                                          {
                                             if(!(_loc8_ && param2))
                                             {
                                                if(!_loc8_)
                                                {
                                                   (§@;§.getItemByName("MovieClip_YouTubeArea") as §0"$§).setVisibility(true);
                                                   if(!(_loc7_ || param3))
                                                   {
                                                      break loop7;
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr378);
                                             }
                                             else
                                             {
                                                §§goto(addr256);
                                             }
                                          }
                                          break loop7;
                                       }
                                       continue;
                                       addr49:
                                    }
                                    §§goto(addr187);
                                    §§goto(addr374);
                                 }
                                 §§goto(addr162);
                                 addr103:
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr379);
                  }
                  return;
                  §§push(13);
               }
               §§goto(addr585);
               if(!_loc8_)
               {
                  §§goto(addr580);
               }
            }
            §§goto(addr585);
         }
         §§goto(addr475);
      }
   }
}
