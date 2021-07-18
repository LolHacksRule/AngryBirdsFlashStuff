package §;!§
{
   import §"n§.§&!o§;
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §0"$§.§"!a§;
   import §0"$§.§6n§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §^!3§.§9R§;
   import com.angrybirds.§&!"§;
   import flash.geom.Rectangle;
   
   public class §8^§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelStartState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!q§ = "LevelStartState";
         }
      }
      
      private var § u§:Boolean = false;
      
      private var §2x§:Boolean = false;
      
      private var §#!7§:§9R§ = null;
      
      private var §4!1§:Boolean = false;
      
      private var §[T§:Boolean = false;
      
      private var §7!Q§:Number = 0;
      
      private var §"6§:Number = 0;
      
      private var §,>§:Number = 0;
      
      private var §3"&§:Number = 0;
      
      private var §+"%§:Number;
      
      private var §85§:Number;
      
      private var §^=§:Number;
      
      private var §3I§:Number;
      
      private var §&!U§:§&!o§;
      
      public function §8^§(param1:§5!Y§, param2:§6h§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
            while(true)
            {
               §?P§ = new §2W§(this);
               while(true)
               {
                  §?P§.init(§#"0§.§+#§.Views.View_LevelStart[0]);
                  addr114:
                  while(!_loc1_)
                  {
                  }
               }
            }
            addr136:
         }
         while(true)
         {
            this.§#!7§ = new §9R§(§&!"§.§1!D§,§&" §);
            for(; _loc2_; this.§+"%§ = (§?P§.getItemByName("Container_MenuLeftButtons") as §"!a§).height,do
            {
               this.§85§ = (§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).height;
               do
               {
                  this.§^=§ = §?P§.getItemByName("Button_LeftMenuOpen").y - 50;
                  do
                  {
                     this.§3I§ = §?P§.getItemByName("Button_RightMenuOpen").y - 50;
                  }
                  while(!_loc2_);
                  
               }
               while(!(_loc2_ || this));
               
            }
            while(_loc1_);
            ,if(_loc2_)
            {
               return;
            })
            {
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr136);
            }
            §§goto(addr114);
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §&!"§.§1!D§.§"!Q§(true);
               addr117:
               while(true)
               {
                  §&!"§.setController(this.§#!7§);
                  loop2:
                  while(true)
                  {
                     this.§#!7§.init();
                     while(_loc3_)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           if(_loc3_)
                           {
                              return;
                              addr49:
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §6!!§.singleton.§"!<§();
            loop5:
            while(true)
            {
               §?P§.getItemByName("MovieClip_SoundsOff").setVisibility(!§6!!§.§2!c§());
               while(true)
               {
                  if(!_loc2_)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     §?P§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§&!"§.§?!v§());
                     while(_loc3_)
                     {
                        §?P§.getItemByName("Button_MEBuy").setVisibility(!!§6!!§.singleton.§<!S§.userProgress.§,!>§ ? false : true);
                        if(_loc2_)
                        {
                           continue;
                        }
                        §§goto(addr40);
                     }
                     continue;
                  }
                  continue loop5;
               }
               §§goto(addr117);
            }
         }
         §§goto(addr49);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.update(param1);
            loop0:
            while(true)
            {
               this.§^=§ = §?P§.getItemByName("Button_LeftMenuOpen").y - 50;
               loop1:
               while(true)
               {
                  this.§3I§ = §?P§.getItemByName("Button_RightMenuOpen").y - 50;
                  loop2:
                  while(true)
                  {
                     this.§=w§(param1);
                     while(true)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                        addr27:
                        if(!(_loc3_ && _loc2_))
                        {
                           §&!"§.controller.update(param1);
                        }
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                     }
                     §§goto(addr19);
                  }
               }
            }
         }
         addr19:
      }
      
      private function §=w§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§?P§.getItemByName("Container_MenuLeftButtons") as §"!a§).mClip.scrollRect = new Rectangle(0,0,(§?P§.getItemByName("Container_MenuLeftButtons") as §"!a§).width,this.§+"%§ + 20 - (this.§+"%§ - this.§,>§));
         }
         while(true)
         {
            (§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).mClip.scrollRect = new Rectangle(0,0,(§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).width,this.§85§ + 20 - (this.§85§ - this.§3"&§));
            while(!(_loc2_ && param1))
            {
               §§push(this.§4!1§);
               loop2:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(this.§7!Q§);
                     while(true)
                     {
                        §§push(0);
                        loop4:
                        while(true)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              if(§§pop() > §§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(this);
                                       §§push(this.§7!Q§);
                                       if(!_loc2_)
                                       {
                                          §§push(0.3);
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop() * param1);
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§pop().§7!Q§ = §§pop();
                                       loop6:
                                       while(true)
                                       {
                                          addr652:
                                          while(true)
                                          {
                                             §§push(this.§7!Q§);
                                             loop59:
                                             while(true)
                                             {
                                                §§push(0);
                                                loop60:
                                                while(true)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      loop61:
                                                      while(true)
                                                      {
                                                         this.§7!Q§ = 0;
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§,>§);
                                                                  loop66:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(0);
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§,>§);
                                                                                    if(!(_loc2_ && param1))
                                                                                    {
                                                                                       §§push(0.5);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(§§pop() * param1);
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                    }
                                                                                    §§pop().§,>§ = §§pop();
                                                                                    addr651:
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 addr634:
                                                                              }
                                                                              addr598:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§,>§);
                                                                                 continue loop59;
                                                                              }
                                                                           }
                                                                           addr633:
                                                                        }
                                                                        else
                                                                        {
                                                                           loop76:
                                                                           while(true)
                                                                           {
                                                                              §§push(90);
                                                                              loop77:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§7!Q§ = 90;
                                                                                       addr740:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    addr737:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§,>§);
                                                                                    addr711:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§+"%§);
                                                                                       loop82:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§,>§);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(0.5);
                                                                                                   if(!(_loc2_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() * param1);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§pop().§,>§ = §§pop();
                                                                                                addr731:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             addr714:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§,>§);
                                                                                             loop86:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§+"%§);
                                                                                                loop87:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§,>§ = this.§+"%§;
                                                                                                         addr707:
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      addr703:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      loop10:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§[T§);
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            §§push(this.§"6§);
                                                                                                            loop11:
                                                                                                            for(; !(_loc2_ && param1); if(!(_loc3_ || _loc2_))
                                                                                                            {
                                                                                                               continue;
                                                                                                            },§§goto(addr209))
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               loop12:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        if(§§pop() > §§pop())
                                                                                                                        {
                                                                                                                           loop13:
                                                                                                                           for(; _loc3_ || this; while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc3_ || _loc2_))
                                                                                                                              {
                                                                                                                                 continue loop13;
                                                                                                                              }
                                                                                                                              if(!(_loc2_ && this))
                                                                                                                              {
                                                                                                                                 this.§"6§ = 0;
                                                                                                                                 §§goto(addr363);
                                                                                                                              }
                                                                                                                              §§goto(addr590);
                                                                                                                           })
                                                                                                                           {
                                                                                                                              §§push(this);
                                                                                                                              §§push(this.§"6§);
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 §§push(0.5);
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * param1);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                              }
                                                                                                                              §§pop().§"6§ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop61;
                                                                                                                                 }
                                                                                                                                 (§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).y = (§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).y + 0.5 * param1;
                                                                                                                                 loop15:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr327:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§"6§);
                                                                                                                                       loop17:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc2_ && _loc2_)
                                                                                                                                          {
                                                                                                                                             continue loop66;
                                                                                                                                          }
                                                                                                                                          §§push(0);
                                                                                                                                          while(_loc3_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                continue loop13;
                                                                                                                                             }
                                                                                                                                             addr265:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§3"&§);
                                                                                                                                                continue loop17;
                                                                                                                                             }
                                                                                                                                             addr219:
                                                                                                                                             if(_loc2_ && param1)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   continue loop60;
                                                                                                                                                }
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   continue loop4;
                                                                                                                                                }
                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                {
                                                                                                                                                   loop51:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_ || this)
                                                                                                                                                            {
                                                                                                                                                               (§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).setVisibility(false);
                                                                                                                                                               loop52:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc2_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              this.§3"&§ = 0;
                                                                                                                                                                              loop53:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    loop37:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       (§?P§.getItemByName("Button_LeftMenuOpen") as §;§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc2_ && this)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop53;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             (§?P§.getItemByName("Button_RightMenuOpen") as §;§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                                                                                                                             loop39:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop52;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop51;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   (§?P§.getItemByName("Button_LeftMenuOpen") as §;§).mClip.MovieClip_LeftMenuImage.rotation = this.§7!Q§;
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop15;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr317:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc2_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                               addr197:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§3"&§);
                                                                                                                                                                                                               if(_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop11;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop17;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop4;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr583:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            (§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).setVisibility(true);
                                                                                                                                                                                                            addr590:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§"6§);
                                                                                                                                                                                                               loop44:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc3_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(180);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop77;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(§§pop() < §§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this);
                                                                                                                                                                                                                              §§push(this.§"6§);
                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(0.5);
                                                                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * param1);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().§"6§ = §§pop();
                                                                                                                                                                                                                              addr570:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop6;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop5;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    (§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).y = (§?P§.getItemByName("Container_MenuRightButtons") as §"!a§).y - 0.5 * param1;
                                                                                                                                                                                                                                    loop21:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§"6§);
                                                                                                                                                                                                                                             loop23:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(180);
                                                                                                                                                                                                                                                addr512:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(!(_loc2_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         this.§"6§ = 180;
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         (§?P§.getItemByName("Container_MenuLeftButtons") as §"!a§).setVisibility(false);
                                                                                                                                                                                                                                                         addr624:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            this.§,>§ = 0;
                                                                                                                                                                                                                                                            break loop21;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr617:
                                                                                                                                                                                                                                                      addr513:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§3"&§);
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§85§);
                                                                                                                                                                                                                                                            loop29:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop87;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop82;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(§§pop() < §§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this);
                                                                                                                                                                                                                                                                     §§push(this.§3"&§);
                                                                                                                                                                                                                                                                     if(_loc3_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() * param1);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§pop().§3"&§ = §§pop();
                                                                                                                                                                                                                                                                     break loop37;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr478:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.§3"&§);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop29;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop86;
                                                                                                                                                                                                                                                                     addr209:
                                                                                                                                                                                                                                                                     if(!(_loc3_ || _loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop12;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr219);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop86;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop87;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop44;
                                                                                                                                                                                                                                                         addr275:
                                                                                                                                                                                                                                                         if(_loc3_ || _loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop12;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop23;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop44;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr508:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                       §§goto(addr576);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr576:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop10;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr768:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          (§?P§.getItemByName("Container_MenuLeftButtons") as §"!a§).setVisibility(true);
                                                                                                                                                                                                                                          addr775:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§7!Q§);
                                                                                                                                                                                                                                             break loop11;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr541:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr714);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop60;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr558:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr508);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop77;
                                                                                                                                                                                                                     addr555:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop59;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr40:
                                                                                                                                                                                                      §§goto(addr731);
                                                                                                                                                                                                      if(_loc3_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop39;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop59;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr634);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop52;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr363:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc2_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr265);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr541);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop53;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr170:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(_loc3_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr439);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr624);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr737);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr651);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr478);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop13;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(this);
                                                                                                                                                                        §§push(this.§3"&§);
                                                                                                                                                                        if(_loc3_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0.5);
                                                                                                                                                                           if(!(_loc2_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * param1);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§3"&§ = §§pop();
                                                                                                                                                                     }
                                                                                                                                                                     addr293:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr317);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(this.§7!Q§);
                                                                                                                                                               if(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0.3);
                                                                                                                                                                  if(!(_loc2_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * param1);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§pop().§7!Q§ = §§pop();
                                                                                                                                                               addr763:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  addr732:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop76;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr746:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr558);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr523);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr170);
                                                                                                                                             }
                                                                                                                                             §§goto(addr512);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop() >= §§pop())
                                                                                                                                             {
                                                                                                                                                continue loop10;
                                                                                                                                             }
                                                                                                                                             §§goto(addr617);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop66;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr83:
                                                                                                                                 if(_loc2_ && param1)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(§?P§.getItemByName("Container_MenuRightButtons") as §"!a§);
                                                                                                                                          §§push(this.§3I§);
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - this.§3"&§);
                                                                                                                                          }
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                          addr96:
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             while(_loc3_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr83);
                                                                                                                                                §§goto(addr96);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§?P§.getItemByName("Container_MenuLeftButtons") as §"!a§);
                                                                                                                                                §§push(this.§^=§);
                                                                                                                                                if(_loc3_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - this.§,>§);
                                                                                                                                                }
                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                §§goto(addr76);
                                                                                                                                             }
                                                                                                                                             addr76:
                                                                                                                                             addr108:
                                                                                                                                          }
                                                                                                                                          §§goto(addr40);
                                                                                                                                       }
                                                                                                                                       §§goto(addr707);
                                                                                                                                    }
                                                                                                                                    §§goto(addr570);
                                                                                                                                 }
                                                                                                                                 §§goto(addr454);
                                                                                                                              }
                                                                                                                              continue loop61;
                                                                                                                           }
                                                                                                                           §§goto(addr740);
                                                                                                                        }
                                                                                                                        §§goto(addr327);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr633);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr555);
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(90);
                                                                                                               addr745:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop() < §§pop())
                                                                                                                  {
                                                                                                                     §§goto(addr746);
                                                                                                                  }
                                                                                                                  §§goto(addr732);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr583);
                                                                                                      }
                                                                                                      continue loop2;
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
                                                                        §§goto(addr651);
                                                                     }
                                                                     §§goto(addr711);
                                                                  }
                                                               }
                                                               addr625:
                                                            }
                                                            §§goto(addr775);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr625);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr703);
                                 }
                              }
                              §§goto(addr652);
                           }
                           §§goto(addr745);
                        }
                        if(!(_loc3_ || this))
                        {
                           continue;
                        }
                        §§goto(addr616);
                        §§push(0);
                     }
                  }
                  §§goto(addr768);
               }
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               (§?P§.getItemByName("Button_RightMenuOpen") as §;§).mClip.MovieClip_RightMenuImage.rotation = this.§"6§;
               §§goto(addr108);
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            (§?P§.getItemByName("Button_Play") as §;§).setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         while(true)
         {
            this.§ u§ = false;
            while(!(_loc1_ && this))
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(!(_loc8_ && param2))
         {
            if("OPEN_LEFT_MENU" === _loc6_)
            {
               if(_loc7_ || param3)
               {
                  addr376:
                  §§push(0);
                  if(_loc8_ && param1)
                  {
                     addr454:
                  }
               }
               else
               {
                  addr521:
                  §§push(10);
                  if(!(_loc8_ && param3))
                  {
                     addr529:
                  }
                  else
                  {
                     addr538:
                  }
               }
            }
            else if("OPEN_RIGHT_MENU" === _loc6_)
            {
               if(_loc7_ || param2)
               {
                  §§push(1);
                  if(!(_loc7_ || param1))
                  {
                     §§goto(addr529);
                  }
               }
               else
               {
                  addr465:
                  §§push(6);
                  if(!_loc7_)
                  {
                     addr555:
                  }
               }
            }
            else if("PLAY_LEVEL" === _loc6_)
            {
               if(_loc7_)
               {
                  §§push(2);
                  if(_loc8_)
                  {
                     §§goto(addr529);
                  }
               }
               else
               {
                  addr507:
                  §§push(9);
                  if(!(_loc7_ || param1))
                  {
                     §§goto(addr538);
                  }
                  else
                  {
                     addr515:
                  }
               }
            }
            else if("OPEN_MENU" === _loc6_)
            {
               if(_loc7_ || param3)
               {
                  §§push(3);
                  if(_loc8_)
                  {
                     addr440:
                  }
               }
               else
               {
                  addr479:
                  §§push(7);
                  if(_loc8_ && param2)
                  {
                     §§goto(addr529);
                  }
               }
            }
            else if("OPEN_AVATAR_CREATOR" === _loc6_)
            {
               if(_loc7_)
               {
                  §§push(4);
                  if(!(_loc8_ && param3))
                  {
                     §§goto(addr440);
                  }
                  else
                  {
                     §§goto(addr538);
                  }
               }
               else
               {
                  §§goto(addr465);
               }
            }
            else if("TOGGLE_SOUNDS" === _loc6_)
            {
               if(_loc7_)
               {
                  §§push(5);
                  if(!(_loc8_ && param1))
                  {
                     §§goto(addr454);
                  }
                  else
                  {
                     §§goto(addr515);
                  }
               }
               else
               {
                  §§goto(addr521);
               }
            }
            else if("TOGGLE_PARTICLES" === _loc6_)
            {
               if(_loc7_ || param2)
               {
                  §§goto(addr465);
               }
               else
               {
                  addr535:
                  §§push(11);
                  if(_loc7_)
                  {
                     §§goto(addr538);
                  }
               }
            }
            else if("FULLSCREEN_BUTTON" === _loc6_)
            {
               if(!(_loc8_ && param1))
               {
                  §§goto(addr479);
               }
               else
               {
                  §§goto(addr535);
               }
            }
            else if("OPEN_CREDITS" === _loc6_)
            {
               if(!(_loc8_ && param1))
               {
                  §§push(8);
                  if(!_loc7_)
                  {
                     §§goto(addr515);
                  }
               }
               else
               {
                  §§goto(addr521);
               }
            }
            else
            {
               if("CREDITS_BUTTON" === _loc6_)
               {
                  if(_loc7_)
                  {
                     §§goto(addr507);
                  }
               }
               else if("SOUNDS_BUTTON" === _loc6_)
               {
                  if(_loc7_)
                  {
                     §§goto(addr521);
                  }
               }
               else if("POPUP_CREDITS_CLOSE" === _loc6_)
               {
                  if(!_loc8_)
                  {
                     §§goto(addr535);
                  }
               }
               else if("ME_POPUP_VIDEO" !== _loc6_)
               {
                  addr560:
                  loop3:
                  switch(§§pop())
                  {
                     case 0:
                        addr349:
                        if(this.§4!1§)
                        {
                           addr350:
                           this.§4!1§ = false;
                           addr353:
                        }
                        else
                        {
                           this.§4!1§ = true;
                           addr344:
                        }
                        addr326:
                        break;
                     case 1:
                        addr331:
                        if(!this.§[T§)
                        {
                           this.§[T§ = true;
                           if(_loc8_ && param3)
                           {
                           }
                           break;
                        }
                        addr332:
                        if(_loc7_)
                        {
                           this.§[T§ = false;
                           addr337:
                        }
                        else
                        {
                           §§goto(addr353);
                        }
                        break;
                     case 2:
                        §'!c§.§3!f§("Menu_Confirm");
                        §<f§(StateEpisodeSelection.§-!q§);
                        addr304:
                        break;
                        addr304:
                        addr311:
                     case 3:
                        §?P§.setItemVisibility("Container_MenuButtons",!§?P§.getItemByName("Container_MenuButtons").visible);
                        break;
                        addr298:
                     case 4:
                        break;
                     case 5:
                        break;
                     case 6:
                        addr275:
                        _loc4_ = !§&!"§.§?!v§();
                        §&!"§.§<8§(_loc4_);
                        §?P§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                        break;
                        addr264:
                        addr259:
                        addr274:
                        addr286:
                     case 7:
                        §'!c§.§3!f§("Menu_Confirm");
                        addr243:
                        §6!!§.singleton.§%!O§();
                        break;
                        addr251:
                        addr244:
                     case 8:
                        §'!c§.§3!f§("Menu_Confirm");
                        if(!(_loc8_ && param1))
                        {
                           break;
                        }
                        break;
                     case 9:
                        §'!c§.§3!f§("Menu_Confirm");
                        addr221:
                        if(!_loc8_)
                        {
                           if(_loc7_)
                           {
                              §<f§(§&4§.§-!q§);
                              this.§4!1§ = false;
                              addr201:
                              if(_loc7_ || param3)
                              {
                                 break;
                              }
                              §§goto(addr304);
                              addr214:
                           }
                           else
                           {
                              §§goto(addr350);
                           }
                        }
                        else
                        {
                           §§goto(addr344);
                        }
                        §§goto(addr326);
                     case 10:
                        §'!c§.§3!f§("Menu_Confirm");
                        addr192:
                        if(_loc7_)
                        {
                           if(!_loc8_)
                           {
                              §§push(§6!!§.§2!c§());
                              if(_loc7_)
                              {
                                 if(_loc7_ || param1)
                                 {
                                    §§push(!§§pop());
                                    loop0:
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          if(!_loc8_)
                                          {
                                             _loc5_ = §§pop();
                                             while(true)
                                             {
                                                if(!(_loc8_ && param2))
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §6!!§.§<=§(_loc5_);
                                                      if(_loc7_ || param1)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr332);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr264);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr201);
                                                         }
                                                      }
                                                      break loop3;
                                                   }
                                                   §§goto(addr259);
                                                }
                                                else
                                                {
                                                   §§goto(addr251);
                                                }
                                             }
                                             §§goto(addr243);
                                          }
                                          else
                                          {
                                             §§goto(addr349);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr275);
                                       }
                                       §§goto(addr275);
                                    }
                                    §§goto(addr349);
                                    addr171:
                                 }
                                 else
                                 {
                                    §§goto(addr331);
                                 }
                                 §§goto(addr332);
                              }
                              §§goto(addr171);
                           }
                           else
                           {
                              §§goto(addr311);
                           }
                        }
                        else
                        {
                           §§goto(addr298);
                        }
                        break;
                     case 11:
                        break;
                     case 12:
                        if(this.§&!U§ == null)
                        {
                           if(!_loc8_)
                           {
                              if(_loc7_)
                              {
                                 if(_loc7_)
                                 {
                                    if(!_loc8_)
                                    {
                                       this.§&!U§ = new §&!o§("http://www.youtube.com/v/-eyig_V-_5o");
                                       if(!_loc8_)
                                       {
                                          if(!_loc8_)
                                          {
                                             while(true)
                                             {
                                                (§?P§.getItemByName("MovieClip_YouTubeArea") as §6n§).changeMovieClip(this.§&!U§);
                                                if(_loc7_ || param2)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      if(!(_loc8_ && this))
                                                      {
                                                         if(!(_loc8_ && param2))
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr286);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr127);
                                                      }
                                                   }
                                                   §§goto(addr98);
                                                }
                                                break loop3;
                                             }
                                             break;
                                          }
                                          §§goto(addr337);
                                       }
                                       break;
                                    }
                                    §§goto(addr221);
                                    §§goto(addr201);
                                 }
                                 else
                                 {
                                    §§goto(addr192);
                                 }
                              }
                              §§goto(addr137);
                           }
                           break;
                        }
                        §§goto(addr354);
                  }
                  return;
                  §§push(13);
               }
               §§goto(addr560);
               if(_loc7_)
               {
                  §§goto(addr555);
               }
            }
            §§goto(addr560);
         }
         §§goto(addr376);
      }
   }
}
