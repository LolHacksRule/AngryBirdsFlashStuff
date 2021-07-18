package §8!_§
{
   import § !Y§.§2q§;
   import § M§.§`"2§;
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §77§.§ ",§;
   import §77§.§,y§;
   import §77§.§@_§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   import flash.geom.Rectangle;
   
   public class §0!q§ extends §5!&§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            STATE_NAME = "LevelStartState";
         }
      }
      
      private var §8!i§:Boolean = false;
      
      private var §6q§:Boolean = false;
      
      private var §'!v§:§`"2§ = null;
      
      private var §%R§:Boolean = false;
      
      private var §&!^§:Boolean = false;
      
      private var §@!P§:Number = 0;
      
      private var §74§:Number = 0;
      
      private var § if§:Number = 0;
      
      private var § i§:Number = 0;
      
      private var §,x§:Number;
      
      private var §[s§:Number;
      
      private var §1!,§:Number;
      
      private var §-![§:Number;
      
      private var §]B§:§2q§;
      
      public function §0!q§(param1:§9"!§, param2:§3!'§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
            while(true)
            {
               §8!A§ = new §1"F§(this);
               loop1:
               while(!_loc2_)
               {
                  §8!A§.init(§-G§.§4+§.Views.View_LevelStart[0]);
                  while(true)
                  {
                     this.§'!v§ = new §`"2§(§9q§.§>!L§,§6u§);
                     loop3:
                     while(!(_loc2_ && this))
                     {
                        this.§,x§ = (§8!A§.getItemByName("Container_MenuLeftButtons") as § ",§).height;
                        loop4:
                        while(true)
                        {
                           this.§[s§ = (§8!A§.getItemByName("Container_MenuRightButtons") as § ",§).height;
                           while(true)
                           {
                              if(!(_loc2_ && this))
                              {
                                 if(!_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activate(param1);
            while(true)
            {
               §9q§.§>!L§.§0!M§(true);
               loop1:
               while(true)
               {
                  §9q§.§15§(this.§'!v§);
                  addr116:
                  while(true)
                  {
                     this.§'!v§.init();
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.update(param1);
            while(true)
            {
               this.§1!,§ = §8!A§.getItemByName("Button_LeftMenuOpen").y - 50;
               addr95:
               while(!_loc2_)
               {
               }
            }
         }
         while(true)
         {
            this.§-![§ = §8!A§.getItemByName("Button_RightMenuOpen").y - 50;
            loop3:
            while(true)
            {
               this.§-i§(param1);
               while(true)
               {
                  if(!_loc2_)
                  {
                     if(this.§6q§)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        continue;
                     }
                     continue loop3;
                  }
                  §§goto(addr95);
               }
               addr20:
               return;
            }
         }
      }
      
      private function §-i§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            (§8!A§.getItemByName("Container_MenuLeftButtons") as § ",§).mClip.scrollRect = new Rectangle(0,0,(§8!A§.getItemByName("Container_MenuLeftButtons") as § ",§).width,this.§,x§ + 20 - (this.§,x§ - this.§ if§));
            loop0:
            while(true)
            {
               (§8!A§.getItemByName("Container_MenuRightButtons") as § ",§).mClip.scrollRect = new Rectangle(0,0,(§8!A§.getItemByName("Container_MenuRightButtons") as § ",§).width,this.§[s§ + 20 - (this.§[s§ - this.§ i§));
               loop1:
               while(true)
               {
                  §§push(this.§%R§);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           (§8!A§.getItemByName("Container_MenuLeftButtons") as § ",§).setVisibility(true);
                           addr851:
                           while(true)
                           {
                              §§push(this.§@!P§);
                              addr820:
                              while(true)
                              {
                                 §§push(90);
                              }
                           }
                        }
                        addr844:
                     }
                     else
                     {
                        §§push(this.§@!P§);
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           loop4:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§@!P§);
                                             if(_loc2_ || param1)
                                             {
                                                §§push(0.3);
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§push(§§pop() * param1);
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             §§pop().§@!P§ = §§pop();
                                             loop81:
                                             while(true)
                                             {
                                                addr707:
                                                while(true)
                                                {
                                                   §§push(this.§@!P§);
                                                   loop71:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      loop72:
                                                      while(true)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               this.§@!P§ = 0;
                                                               addr715:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            addr712:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§ if§);
                                                            loop65:
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               while(true)
                                                               {
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     addr644:
                                                                     §§push(this.§ if§);
                                                                     §§push(0);
                                                                     if(_loc2_ || param1)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§push(this);
                                                                  §§push(this.§ if§);
                                                                  if(_loc2_ || this)
                                                                  {
                                                                     §§push(0.5);
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() * param1);
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                  }
                                                                  §§pop().§ if§ = §§pop();
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§goto(addr715);
                                                               }
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  break;
                                                               }
                                                               addr653:
                                                               (§8!A§.getItemByName("Container_MenuLeftButtons") as § ",§).setVisibility(false);
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     this.§ if§ = 0;
                                                                     addr640:
                                                                     break;
                                                                  }
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§ if§);
                                                                     if(_loc2_ || _loc3_)
                                                                     {
                                                                        §§push(0.5);
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(§§pop() * param1);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§pop().§ if§ = §§pop();
                                                                     addr800:
                                                                     loop17:
                                                                     while(_loc2_ || _loc2_)
                                                                     {
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§ if§);
                                                                           loop19:
                                                                           while(_loc2_)
                                                                           {
                                                                              §§push(this.§,x§);
                                                                              loop20:
                                                                              while(_loc2_)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    loop21:
                                                                                    while(!(_loc3_ && param1))
                                                                                    {
                                                                                       this.§ if§ = this.§,x§;
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       loop36:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_ && param1)
                                                                                          {
                                                                                             continue loop21;
                                                                                          }
                                                                                          (§8!A§.getItemByName("Button_RightMenuOpen") as §@_§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                          loop37:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc3_ && param1))
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr168:
                                                                                                   if(!(_loc3_ && param1))
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               (§8!A§.getItemByName("Button_LeftMenuOpen") as §@_§).mClip.MovieClip_LeftMenuImage.rotation = this.§@!P§;
                                                                                                               while(_loc2_)
                                                                                                               {
                                                                                                                  if(_loc2_ || _loc2_)
                                                                                                                  {
                                                                                                                     (§8!A§.getItemByName("Button_RightMenuOpen") as §@_§).mClip.MovieClip_RightMenuImage.rotation = this.§74§;
                                                                                                                     continue loop37;
                                                                                                                  }
                                                                                                                  §§goto(addr653);
                                                                                                                  if(_loc2_ || param1)
                                                                                                                  {
                                                                                                                     return;
                                                                                                                  }
                                                                                                               }
                                                                                                               loop41:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        this.§ i§ = 0;
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc3_ && param1))
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           loop42:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc3_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc2_ || this)
                                                                                                                                 {
                                                                                                                                    loop43:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§ i§);
                                                                                                                                       loop44:
                                                                                                                                       while(!_loc3_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc3_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc3_ && param1)
                                                                                                                                                {
                                                                                                                                                   continue loop71;
                                                                                                                                                }
                                                                                                                                                addr296:
                                                                                                                                                if(_loc2_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   loop45:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this);
                                                                                                                                                                  §§push(this.§ i§);
                                                                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0.5);
                                                                                                                                                                     if(!(_loc3_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * param1);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().§ i§ = §§pop();
                                                                                                                                                                  break loop37;
                                                                                                                                                               }
                                                                                                                                                               addr314:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§ i§);
                                                                                                                                                               if(!(_loc2_ || _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  continue loop44;
                                                                                                                                                               }
                                                                                                                                                               if(_loc2_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc2_ || _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop65;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc2_ || _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop72;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc2_ || _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop4;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc2_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr585);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr526);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr813);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr777:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§ if§);
                                                                                                                                                                                             addr780:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§,x§);
                                                                                                                                                                                                break loop20;
                                                                                                                                                                                                §§goto(addr296);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr812:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop72;
                                                                                                                                                                                 addr568:
                                                                                                                                                                              }
                                                                                                                                                                              if(§§pop() > §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                          §§push(this.§74§);
                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0.5);
                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * param1);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§74§ = §§pop();
                                                                                                                                                                                          while(_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc3_ && _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             (§8!A§.getItemByName("Container_MenuRightButtons") as § ",§).y = (§8!A§.getItemByName("Container_MenuRightButtons") as § ",§).y + 0.5 * param1;
                                                                                                                                                                                             while(_loc2_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§74§);
                                                                                                                                                                                                   addr342:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                      addr343:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop43;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop42;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc2_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§74§ = 0;
                                                                                                                                                                                                               continue loop42;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop81;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(this);
                                                                                                                                                                                                               §§push(this.§ i§);
                                                                                                                                                                                                               if(_loc2_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(0.5);
                                                                                                                                                                                                                  if(_loc2_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * param1);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().§ i§ = §§pop();
                                                                                                                                                                                                               while(!_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc2_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§ i§);
                                                                                                                                                                                                                        break loop44;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr462:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr640);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr526:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr529:
                                                                                                                                                                                                                     §§push(this.§74§);
                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(180);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop19;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr492:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr533:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr539:
                                                                                                                                                                                                               if(_loc2_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§74§ = 180;
                                                                                                                                                                                                                  break loop41;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop5;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop17;
                                                                                                                                                                                                            addr533:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr486:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§ i§);
                                                                                                                                                                                                            addr489:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§[s§);
                                                                                                                                                                                                               addr491:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop() < §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr492);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr462);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop42;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr697);
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop41;
                                                                                                                                                                                          §§goto(addr675);
                                                                                                                                                                                          addr442:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr813:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§@!P§ = 90;
                                                                                                                                                                                             break loop17;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr813:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§ i§ = this.§[s§;
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr403:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr182:
                                                                                                                                                                                                   addr585:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      (§8!A§.getItemByName("Button_LeftMenuOpen") as §@_§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                                                                                                                                      continue loop36;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr585:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                      §§push(this.§74§);
                                                                                                                                                                                                      if(_loc2_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(0.5);
                                                                                                                                                                                                         if(!(_loc3_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * param1);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().§74§ = §§pop();
                                                                                                                                                                                                      addr607:
                                                                                                                                                                                                      (§8!A§.getItemByName("Container_MenuRightButtons") as § ",§).y = (§8!A§.getItemByName("Container_MenuRightButtons") as § ",§).y - 0.5 * param1;
                                                                                                                                                                                                      §§goto(addr561);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr168);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr485:
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr533);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr539);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr479:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr533);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr426:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr339);
                                                                                                                                                                              §§goto(addr813);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr489);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop65;
                                                                                                                                                                     addr408:
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop45;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr644);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr342);
                                                                                                                                                            }
                                                                                                                                                            addr219:
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr418);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr644);
                                                                                                                                                }
                                                                                                                                                §§goto(addr780);
                                                                                                                                             }
                                                                                                                                             while(_loc2_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr568);
                                                                                                                                                §§push(180);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr812);
                                                                                                                                             }
                                                                                                                                             addr565:
                                                                                                                                             addr811:
                                                                                                                                          }
                                                                                                                                          §§goto(addr529);
                                                                                                                                       }
                                                                                                                                       continue loop3;
                                                                                                                                    }
                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             continue loop41;
                                                                                                                                          }
                                                                                                                                          §§goto(addr426);
                                                                                                                                       }
                                                                                                                                       addr256:
                                                                                                                                    }
                                                                                                                                    §§goto(addr182);
                                                                                                                                 }
                                                                                                                                 §§goto(addr607);
                                                                                                                              }
                                                                                                                              §§goto(addr395);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr204:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr851);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr442);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr486);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr844);
                                                                                                            }
                                                                                                            §§goto(addr851);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr776);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr585);
                                                                                                   }
                                                                                                   §§goto(addr485);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop36;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                §§goto(addr219);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr635:
                                                                                             }
                                                                                             §§goto(addr565);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       addr808:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr811);
                                                                                       }
                                                                                       §§goto(addr765);
                                                                                    }
                                                                                    addr765:
                                                                                    addr839:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    break loop65;
                                                                                    §§goto(addr776);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() < §§pop())
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 continue loop18;
                                                                              }
                                                                           }
                                                                           §§goto(addr820);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr777);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr712);
                                                               }
                                                            }
                                                            continue loop2;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr732:
                                       }
                                       addr822:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§@!P§);
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(0.3);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() * param1);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().§@!P§ = §§pop();
                                          §§goto(addr839);
                                       }
                                    }
                                 }
                                 §§goto(addr707);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§goto(addr822);
                        }
                        §§goto(addr808);
                     }
                  }
               }
            }
         }
         §§goto(addr732);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§8!A§.getItemByName("Button_Play") as §@_§).setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         while(true)
         {
            this.§8!i§ = false;
            while(!_loc1_)
            {
               super.deActivate();
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(_loc7_ || param1)
         {
            if("OPEN_LEFT_MENU" === _loc6_)
            {
               if(!(_loc8_ && param3))
               {
                  addr386:
                  §§push(0);
                  if(_loc8_)
                  {
                     addr455:
                  }
               }
               else
               {
                  addr480:
                  §§push(6);
                  if(!_loc7_)
                  {
                  }
               }
            }
            else
            {
               if("OPEN_RIGHT_MENU" === _loc6_)
               {
                  if(_loc7_ || this)
                  {
                     §§push(1);
                     if(_loc8_)
                     {
                        addr422:
                     }
                  }
               }
               else if("PLAY_LEVEL" === _loc6_)
               {
                  if(_loc7_ || this)
                  {
                     §§push(2);
                     if(!(_loc8_ && this))
                     {
                        §§goto(addr422);
                     }
                     else
                     {
                        addr441:
                        §§goto(addr580);
                     }
                  }
                  else
                  {
                     §§goto(addr480);
                  }
               }
               else if("OPEN_MENU" === _loc6_)
               {
                  if(_loc7_ || param1)
                  {
                     §§push(3);
                     if(!(_loc8_ && param1))
                     {
                        §§goto(addr441);
                     }
                     else
                     {
                        addr553:
                        §§goto(addr580);
                     }
                  }
               }
               else if("OPEN_AVATAR_CREATOR" === _loc6_)
               {
                  if(!_loc8_)
                  {
                     §§push(4);
                     if(_loc7_ || param1)
                     {
                        §§goto(addr455);
                     }
                     else
                     {
                        addr525:
                        §§goto(addr580);
                     }
                  }
                  else
                  {
                     addr503:
                     §§push(8);
                     if(_loc7_ || param2)
                     {
                        addr511:
                     }
                     else
                     {
                        addr575:
                     }
                     §§goto(addr580);
                  }
               }
               else if("TOGGLE_SOUNDS" === _loc6_)
               {
                  if(_loc7_ || param2)
                  {
                     §§push(5);
                     if(_loc7_ || this)
                     {
                        §§goto(addr580);
                     }
                     else
                     {
                        §§goto(addr511);
                     }
                  }
                  else
                  {
                     addr545:
                     §§push(11);
                     if(_loc7_ || param2)
                     {
                        §§goto(addr553);
                     }
                     §§goto(addr580);
                  }
               }
               else if("TOGGLE_PARTICLES" === _loc6_)
               {
                  if(!_loc8_)
                  {
                     §§goto(addr480);
                  }
                  else
                  {
                     addr494:
                     §§push(7);
                     if(!_loc8_)
                     {
                        §§goto(addr580);
                     }
                     else
                     {
                        §§goto(addr511);
                     }
                  }
               }
               else if("FULLSCREEN_BUTTON" === _loc6_)
               {
                  if(_loc7_ || param1)
                  {
                     §§goto(addr494);
                  }
                  else
                  {
                     addr522:
                     §§push(9);
                     if(_loc7_)
                     {
                        §§goto(addr525);
                     }
                     else
                     {
                        §§goto(addr575);
                     }
                  }
               }
               else if("OPEN_CREDITS" === _loc6_)
               {
                  if(_loc7_)
                  {
                     §§goto(addr503);
                  }
                  else
                  {
                     §§goto(addr522);
                  }
               }
               else
               {
                  if("CREDITS_BUTTON" === _loc6_)
                  {
                     if(!(_loc8_ && param3))
                     {
                        §§goto(addr522);
                     }
                     else
                     {
                        §§goto(addr545);
                     }
                  }
                  else
                  {
                     if("SOUNDS_BUTTON" === _loc6_)
                     {
                        if(!_loc8_)
                        {
                           §§push(10);
                           if(_loc7_)
                           {
                              §§goto(addr580);
                           }
                           else
                           {
                              §§goto(addr575);
                           }
                        }
                     }
                     else if("POPUP_CREDITS_CLOSE" === _loc6_)
                     {
                        if(!(_loc8_ && this))
                        {
                           §§goto(addr545);
                        }
                     }
                     else if("ME_POPUP_VIDEO" !== _loc6_)
                     {
                        addr580:
                        loop7:
                        switch(§§pop())
                        {
                           case 0:
                              addr357:
                              if(this.§%R§)
                              {
                                 addr358:
                                 this.§%R§ = false;
                                 if(!_loc7_)
                                 {
                                 }
                                 break;
                              }
                              this.§%R§ = true;
                              addr352:
                              break;
                           case 1:
                              addr341:
                              if(this.§&!^§)
                              {
                                 addr342:
                                 this.§&!^§ = false;
                                 addr345:
                              }
                              else
                              {
                                 this.§&!^§ = true;
                                 addr335:
                              }
                              break;
                           case 2:
                              §<!O§.playSound("Menu_Confirm");
                              §8!^§(StateEpisodeSelection.STATE_NAME);
                              break;
                              addr328:
                              addr321:
                           case 3:
                              §8!A§.setItemVisibility("Container_MenuButtons",!§8!A§.getItemByName("Container_MenuButtons").visible);
                              addr308:
                              if(!(_loc8_ && param3))
                              {
                                 break;
                              }
                              §§goto(addr342);
                              break;
                           case 4:
                              break;
                           case 5:
                              break;
                           case 6:
                              addr283:
                              _loc4_ = !§9q§.§&T§();
                              addr284:
                              if(_loc7_)
                              {
                                 §9q§.§]i§(_loc4_);
                                 addr270:
                                 if(!_loc8_)
                                 {
                                    §8!A§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                                    addr265:
                                    break;
                                    addr265:
                                 }
                                 else
                                 {
                                    §§goto(addr328);
                                 }
                              }
                              else
                              {
                                 §§goto(addr308);
                              }
                              break;
                              addr282:
                           case 7:
                              §<!O§.playSound("Menu_Confirm");
                              addr247:
                              § !g§.§;!'§.§%!N§();
                              if(!_loc8_)
                              {
                                 break;
                              }
                              §§goto(addr284);
                              break;
                              addr257:
                           case 8:
                              §<!O§.playSound("Menu_Confirm");
                              addr236:
                              if(!(_loc8_ && param1))
                              {
                                 break;
                              }
                              §§goto(addr265);
                              break;
                           case 9:
                              §<!O§.playSound("Menu_Confirm");
                              §8!^§(§4!U§.STATE_NAME);
                              if(_loc7_)
                              {
                                 if(!(_loc8_ && this))
                                 {
                                    if(_loc7_ || param1)
                                    {
                                       this.§%R§ = false;
                                       addr191:
                                       if(_loc7_)
                                       {
                                          if(!(_loc8_ && this))
                                          {
                                             break;
                                          }
                                          §§goto(addr270);
                                       }
                                       else
                                       {
                                          §§goto(addr236);
                                       }
                                       §§goto(addr265);
                                    }
                                    else
                                    {
                                       §§goto(addr358);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr345);
                                 }
                              }
                              break;
                              addr229:
                           case 10:
                              §<!O§.playSound("Menu_Confirm");
                              loop0:
                              while(_loc7_ || param1)
                              {
                                 §§push(§ !g§.§<!c§());
                                 if(_loc7_ || param2)
                                 {
                                    if(!_loc8_)
                                    {
                                       if(_loc7_ || param3)
                                       {
                                          if(!_loc8_)
                                          {
                                             §§push(!§§pop());
                                             loop1:
                                             while(true)
                                             {
                                                if(!(_loc8_ && param1))
                                                {
                                                   _loc5_ = §§pop();
                                                   while(true)
                                                   {
                                                      § !g§.§@p§(_loc5_);
                                                      addr130:
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(!_loc8_)
                                                         {
                                                            if(_loc7_ || param3)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§goto(addr321);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr257);
                                                         }
                                                      }
                                                      §§goto(addr247);
                                                      addr106:
                                                      if(!(_loc7_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§ !g§.§;!'§);
                                                      if(!_loc8_)
                                                      {
                                                         §§pop().§2!M§();
                                                         addr118:
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            addr91:
                                                            §8!A§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
                                                            break loop7;
                                                            addr98:
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr247);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr341);
                                                }
                                             }
                                             §§goto(addr342);
                                             addr164:
                                          }
                                          else
                                          {
                                             §§goto(addr357);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr282);
                                       }
                                       §§goto(addr284);
                                    }
                                    §§goto(addr283);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr352);
                           case 11:
                              break;
                           case 12:
                              if(this.§]B§ == null)
                              {
                                 if(!_loc8_)
                                 {
                                    if(!_loc8_)
                                    {
                                       if(_loc7_ || param2)
                                       {
                                          if(_loc7_)
                                          {
                                             this.§]B§ = new §2q§("http://www.youtube.com/v/-eyig_V-_5o");
                                             loop4:
                                             for(; _loc7_; if(_loc8_ && param1)
                                             {
                                                continue;
                                             },if(!_loc8_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr42);
                                                }
                                                addr364:
                                                break loop7;
                                             },§§goto(addr98))
                                             {
                                                while(true)
                                                {
                                                   (§8!A§.getItemByName("MovieClip_YouTubeArea") as §,y§).changeMovieClip(this.§]B§);
                                                   if(_loc7_)
                                                   {
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         (§8!A§.getItemByName("MovieClip_YouTubeArea") as §,y§).setVisibility(true);
                                                         if(_loc8_)
                                                         {
                                                            break loop7;
                                                         }
                                                         continue loop4;
                                                      }
                                                      §§goto(addr104);
                                                   }
                                                   break loop7;
                                                }
                                             }
                                             §§goto(addr335);
                                          }
                                          §§goto(addr247);
                                       }
                                       else
                                       {
                                          §§goto(addr229);
                                       }
                                    }
                                    §§goto(addr118);
                                 }
                                 break;
                              }
                              §§goto(addr364);
                        }
                        return;
                        §§push(13);
                     }
                     §§goto(addr580);
                  }
                  §§goto(addr580);
               }
               §§goto(addr580);
               if(_loc7_ || param3)
               {
                  §§goto(addr575);
               }
            }
            §§goto(addr580);
         }
         §§goto(addr386);
      }
   }
}
