package §<!S§
{
   import § D§.§]!B§;
   import §2!?§.§>X§;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §7p§.YouTubeVideo;
   import §=?§.SoundEngine;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.§6#§;
   import §]!6§.UIButtonRovio;
   import §]!6§.UIContainerRovio;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class StateStart extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelStartState";
      
      private static var _avatarGraphic:BitmapData = null;
      
      {
         var STATE_NAME:Boolean = true;
         var _avatarGraphic:Boolean = false;
         if(_avatarGraphic && StateStart)
         {
         }
         loop0:
         do
         {
            STATE_NAME = "LevelStartState";
            while(true)
            {
               while(STATE_NAME)
               {
                  _avatarGraphic = null;
                  if(!(_avatarGraphic && STATE_NAME))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(STATE_NAME || StateStart));
         
      }
      
      private var §6T§:Boolean = false;
      
      private var §'@§:Boolean = false;
      
      private var §8!i§:§>X§ = null;
      
      private var §=!Q§:Boolean = false;
      
      private var §=Q§:Boolean = false;
      
      private var § c§:Number = 0;
      
      private var §4]§:Number = 0;
      
      private var §'!K§:Number = 0;
      
      private var §3!G§:Number = 0;
      
      private var §+!E§:Number;
      
      private var §2;§:Number;
      
      private var §%!M§:Number;
      
      private var §@>§:Number;
      
      private var §1!f§:YouTubeVideo;
      
      public function StateStart(initState:Boolean = false, name:String = "LevelStartState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
         }
         if(_loc3_ || initState)
         {
            while(true)
            {
               addr74:
               if(!(_loc4_ && _loc3_))
               {
                  addr81:
                  if(!_loc3_)
                  {
                     while(_loc3_ || _loc3_)
                     {
                        §§goto(addr74);
                        §§goto(addr81);
                     }
                     while(!(_loc4_ && name))
                     {
                        super(initState,name);
                        §§goto(addr67);
                     }
                     addr67:
                     while(true)
                     {
                        §§goto(addr84);
                     }
                     addr84:
                     addr94:
                  }
                  return;
               }
            }
         }
         §§goto(addr94);
      }
      
      public static function get §"!,§() : BitmapData
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return _avatarGraphic;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(!_loc1_)
         {
            while(true)
            {
               super.init();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §5!M§ = new §6"§(this);
                     while(true)
                     {
                        addr196:
                        while(!(_loc1_ && this))
                        {
                           §5!M§.init(§>!^§.§8'§.Views.View_LevelStart[0]);
                           while(true)
                           {
                              addr170:
                              while(true)
                              {
                                 this.§8!i§ = new §>X§(§]!B§.§>F§);
                                 while(_loc2_)
                                 {
                                    while(_loc2_)
                                    {
                                       continue loop1;
                                    }
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
         while(true)
         {
            §§goto(addr104);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!(_loc1_ && _loc2_))
         {
            while(true)
            {
               super.activate();
               loop1:
               while(_loc2_ || _loc2_)
               {
                  loop2:
                  while(true)
                  {
                     §]!B§.§>F§.§,>§(true);
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(!_loc1_)
                        {
                           §]!B§.setController(this.§8!i§);
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 this.§8!i§.init();
                                 loop7:
                                 while(_loc2_)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       AngryBirdsFP11.playThemeMusic();
                                       loop9:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §5!M§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§+i§());
                                             loop11:
                                             while(true)
                                             {
                                                while(!_loc1_)
                                                {
                                                   §5!M§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§]!B§.§]!#§());
                                                   while(_loc2_ || _loc2_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop9;
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         continue loop11;
                                                      }
                                                   }
                                                }
                                                continue loop6;
                                             }
                                             addr74:
                                             loop14:
                                             while(!(_loc1_ && _loc2_))
                                             {
                                                continue loop3;
                                                while(true)
                                                {
                                                   §5!M§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§?m§ ? Boolean(false) : Boolean(true));
                                                   while(_loc1_)
                                                   {
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   §§goto(addr39);
                                                }
                                                §§goto(addr53);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc4_ && this)
         {
         }
         loop0:
         while(true)
         {
            addr34:
            addr46:
            while(true)
            {
               continue loop0;
            }
            addr52:
            §§push(super.run(deltaTime));
            if(_loc3_)
            {
               §§push(int(§§pop()));
            }
            var superReturn:* = §§pop();
            if(_loc3_ || deltaTime)
            {
               loop3:
               while(true)
               {
                  §§push(superReturn);
                  do
                  {
                     if(§§pop() != StateBase.STATE_STATUS_RUNNING)
                     {
                        if(_loc4_)
                        {
                        }
                        continue;
                     }
                     addr200:
                     while(true)
                     {
                        this.§%!M§ = §5!M§.getItemByName("Button_LeftMenuOpen").y - 50;
                        while(true)
                        {
                           addr198:
                           while(true)
                           {
                              this.§@>§ = §5!M§.getItemByName("Button_RightMenuOpen").y - 50;
                              if(_loc4_ && superReturn)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  while(§§push(superReturn), _loc4_ && this);
                  
                  return §§pop();
               }
            }
            §§goto(addr166);
         }
      }
      
      private function §!!B§(deltaTime:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  (§5!M§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).mClip.scrollRect = new Rectangle(0,0,(§5!M§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).width,this.§+!E§ + 20 - (this.§+!E§ - this.§'!K§));
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        (§5!M§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).mClip.scrollRect = new Rectangle(0,0,(§5!M§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).width,this.§2;§ + 20 - (this.§2;§ - this.§3!G§));
                        while(true)
                        {
                           continue loop3;
                           addr323:
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           this.§3!G§ = 0;
                           loop78:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 if(!_loc2_)
                                 {
                                    loop76:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             if(!(_loc2_ && deltaTime))
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      loop51:
                                                      while(true)
                                                      {
                                                         (§5!M§.getItemByName("Button_LeftMenuOpen") as UIButtonRovio).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                         loop52:
                                                         while(true)
                                                         {
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               loop53:
                                                               while(_loc3_)
                                                               {
                                                                  (§5!M§.getItemByName("Button_RightMenuOpen") as UIButtonRovio).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                  loop54:
                                                                  for(; !_loc2_; if(_loc2_ && this)
                                                                  {
                                                                     continue;
                                                                  },§§goto(addr81))
                                                                  {
                                                                     loop55:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ || deltaTime)
                                                                        {
                                                                           if(!(_loc2_ && deltaTime))
                                                                           {
                                                                              (§5!M§.getItemByName("Button_LeftMenuOpen") as UIButtonRovio).mClip.MovieClip_LeftMenuImage.rotation = this.§ c§;
                                                                              loop56:
                                                                              for(; !_loc2_; if(!(_loc3_ || deltaTime))
                                                                              {
                                                                                 continue;
                                                                              },if(!_loc3_)
                                                                              {
                                                                                 continue loop78;
                                                                              },if(!(_loc2_ && deltaTime))
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       §§push(§5!M§.getItemByName("Container_MenuRightButtons") as UIContainerRovio);
                                                                                       §§push(this.§@>§);
                                                                                       if(!(_loc2_ && this))
                                                                                       {
                                                                                          §§push(§§pop() - this.§3!G§);
                                                                                       }
                                                                                       §§pop().y = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                continue loop76;
                                                                                             }
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(_loc3_ || _loc2_)
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr1170);
                                                                                                }
                                                                                                §§goto(addr1073);
                                                                                             }
                                                                                             §§goto(addr886);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr135);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr654);
                                                                                    }
                                                                                    §§goto(addr631);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    (§5!M§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y = (§5!M§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y + 0.5 * deltaTime;
                                                                                    §§goto(addr544);
                                                                                 }
                                                                                 addr549:
                                                                              },while(true)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§goto(addr323);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr399);
                                                                                 }
                                                                              })
                                                                              {
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    loop57:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue loop53;
                                                                                       }
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                (§5!M§.getItemByName("Button_RightMenuOpen") as UIButtonRovio).mClip.MovieClip_RightMenuImage.rotation = this.§4]§;
                                                                                                loop58:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         if(!(_loc2_ && _loc3_))
                                                                                                         {
                                                                                                            addr176:
                                                                                                            if(_loc3_ || this)
                                                                                                            {
                                                                                                               if(!(_loc2_ && this))
                                                                                                               {
                                                                                                                  loop59:
                                                                                                                  while(!_loc2_)
                                                                                                                  {
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        break loop57;
                                                                                                                        addr135:
                                                                                                                     }
                                                                                                                     §§push(§5!M§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio);
                                                                                                                     §§push(this.§%!M§);
                                                                                                                     if(!(_loc2_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() - this.§'!K§);
                                                                                                                     }
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           continue loop54;
                                                                                                                        }
                                                                                                                        continue loop58;
                                                                                                                     }
                                                                                                                     continue loop54;
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc3_ || _loc2_)
                                                                                                                        {
                                                                                                                           continue loop56;
                                                                                                                        }
                                                                                                                        continue loop59;
                                                                                                                     }
                                                                                                                     continue loop78;
                                                                                                                  }
                                                                                                                  addr686:
                                                                                                                  if(!(_loc2_ && deltaTime))
                                                                                                                  {
                                                                                                                     loop82:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              §§push(this);
                                                                                                                              §§push(this.§3!G§);
                                                                                                                              if(_loc3_ || deltaTime)
                                                                                                                              {
                                                                                                                                 §§push(0.5);
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * deltaTime);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                              }
                                                                                                                              §§pop().§3!G§ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr631:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop1;
                                                                                                                                       }
                                                                                                                                       loop85:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§3!G§);
                                                                                                                                          loop86:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§2;§);
                                                                                                                                             if(_loc3_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop82;
                                                                                                                                                      }
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         this.§3!G§ = this.§2;§;
                                                                                                                                                         addr599:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   loop132:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc2_ && deltaTime))
                                                                                                                                                      {
                                                                                                                                                         addr905:
                                                                                                                                                         if(_loc3_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            loop31:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§=Q§);
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     while(!_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc2_ && deltaTime))
                                                                                                                                                                        {
                                                                                                                                                                           (§5!M§.getItemByName("Container_MenuRightButtons") as UIContainerRovio).setVisibility(true);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              break loop57;
                                                                                                                                                                           }
                                                                                                                                                                           addr876:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           addr966:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              (§5!M§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).setVisibility(false);
                                                                                                                                                                              break loop52;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     loop130:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           this.§'!K§ = 0;
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop132;
                                                                                                                                                                              }
                                                                                                                                                                              loop113:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1026:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§ c§ = 0;
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             loop117:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§'!K§);
                                                                                                                                                                                                addr999:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                   addr1000:
                                                                                                                                                                                                   loop119:
                                                                                                                                                                                                   for(; _loc3_ || _loc2_; while(_loc3_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() >= §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop31;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr965);
                                                                                                                                                                                                   })
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1009:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this);
                                                                                                                                                                                                               §§push(this.§'!K§);
                                                                                                                                                                                                               if(!(_loc2_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(0.5);
                                                                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * deltaTime);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().§'!K§ = §§pop();
                                                                                                                                                                                                               addr988:
                                                                                                                                                                                                               loop122:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr969:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1048:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1029:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1020:
                                                                                                                                                                                                                           addr349:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§ c§);
                                                                                                                                                                                                                              addr1023:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop119;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc3_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop2;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop122;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1048:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break loop52;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1008:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§'!K§);
                                                                                                                                                                                                         addr956:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop119;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop113;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop117;
                                                                                                                                                                                                      §§goto(addr1000);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1012:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1155:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                             §§push(this.§ c§);
                                                                                                                                                                                             if(!_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0.3);
                                                                                                                                                                                                if(_loc3_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * deltaTime);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().§ c§ = §§pop();
                                                                                                                                                                                             addr1148:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1129:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1155:
                                                                                                                                                                                       }
                                                                                                                                                                                       addr943:
                                                                                                                                                                                       if(_loc3_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             loop9:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop10:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                      §§push(this.§ c§);
                                                                                                                                                                                                      if(!(_loc2_ && deltaTime))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(0.3);
                                                                                                                                                                                                         if(!_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * deltaTime);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().§ c§ = §§pop();
                                                                                                                                                                                                      §§goto(addr1048);
                                                                                                                                                                                                      addr742:
                                                                                                                                                                                                      loop96:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc3_ || deltaTime))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop10;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop0;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1158:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§ c§);
                                                                                                                                                                                                               addr1152:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(90);
                                                                                                                                                                                                                  addr1153:
                                                                                                                                                                                                                  loop137:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1155);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1154:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1113:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§ c§);
                                                                                                                                                                                                                        loop108:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(90);
                                                                                                                                                                                                                           addr1117:
                                                                                                                                                                                                                           while(§§pop() <= §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§'!K§);
                                                                                                                                                                                                                                 loop18:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§+!E§);
                                                                                                                                                                                                                                    addr1102:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1104:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                                                                §§push(this.§'!K§);
                                                                                                                                                                                                                                                if(!_loc2_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(0.5);
                                                                                                                                                                                                                                                   if(_loc3_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * deltaTime);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().§'!K§ = §§pop();
                                                                                                                                                                                                                                                addr1096:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1077:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr905);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1103:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§'!K§);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§+!E§);
                                                                                                                                                                                                                                             addr1072:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break loop82;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1073:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1049:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop31;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr835:
                                                                                                                                                                                                                                             if(_loc2_ && _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop18;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(180);
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop1;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr728:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.§4]§);
                                                                                                                                                                                                                                                   loop46:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr734:
                                                                                                                                                                                                                                                         §§push(180);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc2_ && _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop137;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop96;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr655:
                                                                                                                                                                                                                                                            loop91:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§3!G§);
                                                                                                                                                                                                                                                               addr658:
                                                                                                                                                                                                                                                               while(!(_loc2_ && deltaTime))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc2_ && deltaTime))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr674:
                                                                                                                                                                                                                                                                        §§push(this.§2;§);
                                                                                                                                                                                                                                                                        break loop86;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     break loop91;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr828:
                                                                                                                                                                                                                                                                  loop101:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc3_ || deltaTime)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr835);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                                                                           addr1056:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop9;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1020);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop101;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1055:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop46;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr999);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop137;
                                                                                                                                                                                                                                                         addr734:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop108;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop108;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1118:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1119:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc2_ && deltaTime))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.§ c§ = 90;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr1154);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1107:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1097);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1048);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1118);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop130;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr917:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              (§5!M§.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).setVisibility(true);
                                                                                                                                                                              addr1170:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1158);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1176:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1113);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  break loop52;
                                                                                                                                                                  addr883:
                                                                                                                                                               }
                                                                                                                                                               §§push(this.§4]§);
                                                                                                                                                               loop32:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  addr580:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc2_ && deltaTime))
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() > §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop55;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr592:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§4]§);
                                                                                                                                                                                 continue loop32;
                                                                                                                                                                              }
                                                                                                                                                                              addr489:
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr957);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr734);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1056);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1153);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1055);
                                                                                                                                                                  §§push(this.§ c§);
                                                                                                                                                               }
                                                                                                                                                               addr1175:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1176);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr1174:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1096);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1026);
                                                                                                                                                   }
                                                                                                                                                   addr623:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop51;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc2_ && deltaTime))
                                                                                                                                                {
                                                                                                                                                   if(§§pop() >= §§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop85;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr686);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr1072);
                                                                                                                                             §§goto(addr674);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1102);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr805);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr654:
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr701);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§'!K§ = this.§+!E§;
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr1049);
                                                                                                                           addr469:
                                                                                                                           if(!(_loc3_ || this))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr445);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        this.§4]§ = 180;
                                                                                                                        break loop54;
                                                                                                                     }
                                                                                                                     §§goto(addr1119);
                                                                                                                     addr760:
                                                                                                                  }
                                                                                                                  §§goto(addr1155);
                                                                                                                  addr147:
                                                                                                               }
                                                                                                               §§goto(addr1012);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr489);
                                                                                                               §§goto(addr176);
                                                                                                            }
                                                                                                            addr522:
                                                                                                         }
                                                                                                         §§goto(addr464);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop55;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§goto(addr416);
                                                                                                   }
                                                                                                   §§goto(addr1129);
                                                                                                }
                                                                                                addr442:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§goto(addr522);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(this);
                                                                                                      §§push(this.§4]§);
                                                                                                      if(_loc3_ || this)
                                                                                                      {
                                                                                                         §§push(0.5);
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop() * deltaTime);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§pop().§4]§ = §§pop();
                                                                                                      §§goto(addr824);
                                                                                                   }
                                                                                                   addr854:
                                                                                                }
                                                                                                §§goto(addr917);
                                                                                             }
                                                                                             addr544:
                                                                                          }
                                                                                          §§goto(addr463);
                                                                                       }
                                                                                       §§goto(addr342);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr828);
                                                                                    }
                                                                                    addr193:
                                                                                 }
                                                                                 §§goto(addr876);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 addr508:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             this.§4]§ = 0;
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         §§goto(addr469);
                                                                                                      }
                                                                                                      addr563:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            if(!(_loc2_ && _loc2_))
                                                                                                            {
                                                                                                               §§goto(addr549);
                                                                                                            }
                                                                                                            §§goto(addr1103);
                                                                                                         }
                                                                                                         §§goto(addr623);
                                                                                                      }
                                                                                                   }
                                                                                                   addr467:
                                                                                                }
                                                                                                §§goto(addr1008);
                                                                                             }
                                                                                             addr481:
                                                                                          }
                                                                                          §§goto(addr1175);
                                                                                       }
                                                                                       §§goto(addr1104);
                                                                                    }
                                                                                    §§goto(addr969);
                                                                                 }
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop52;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§4]§);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(0.5);
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§push(§§pop() * deltaTime);
                                                                           }
                                                                           §§push(§§pop() - §§pop());
                                                                        }
                                                                        §§pop().§4]§ = §§pop();
                                                                        §§goto(addr563);
                                                                     }
                                                                  }
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     if(_loc3_ || deltaTime)
                                                                     {
                                                                        §§goto(addr701);
                                                                     }
                                                                     §§goto(addr966);
                                                                  }
                                                                  §§goto(addr742);
                                                               }
                                                               continue loop3;
                                                            }
                                                            §§goto(addr883);
                                                         }
                                                         while(!(_loc2_ && deltaTime))
                                                         {
                                                            §§goto(addr943);
                                                         }
                                                         §§goto(addr1009);
                                                      }
                                                   }
                                                   §§goto(addr1148);
                                                }
                                                §§goto(addr1077);
                                             }
                                             §§goto(addr508);
                                          }
                                          §§goto(addr481);
                                       }
                                       §§goto(addr402);
                                    }
                                 }
                                 §§goto(addr1107);
                              }
                              §§goto(addr467);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr401);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || this)
         {
         }
         loop0:
         while(true)
         {
            (§5!M§.getItemByName("Button_Play") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  this.§6T§ = false;
                  loop3:
                  while(_loc1_)
                  {
                     loop4:
                     while(!_loc2_)
                     {
                        super.deActivate();
                        while(true)
                        {
                           if(_loc1_ || this)
                           {
                              continue loop1;
                           }
                           continue loop4;
                           addr82:
                           if(_loc1_ || this)
                           {
                              if(_loc1_ || this)
                              {
                                 return;
                              }
                              continue loop3;
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                     continue loop2;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_)
         {
            do
            {
               super.cleanup();
               while(_loc2_ && _loc1_)
               {
               }
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_ && this)
         {
         }
         var particlesEnabled:* = false;
         var soundsEnabled:* = false;
         if(!_loc8_)
         {
         }
         while(true)
         {
            while(!(_loc7_ && eventName))
            {
               if(!(_loc8_ || eventIndex))
               {
                  continue;
               }
               var _loc6_:* = eventName;
               if(_loc8_)
               {
                  §§push("OPEN_LEFT_MENU");
                  if(!(_loc7_ && eventName))
                  {
                     if(!(_loc7_ && this))
                     {
                        §§push(_loc6_);
                        if(_loc8_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc8_ || eventIndex)
                              {
                                 §§push(0);
                                 if(!(_loc8_ || component))
                                 {
                                    addr1066:
                                 }
                              }
                              else
                              {
                                 addr1089:
                                 §§push(10);
                                 if(_loc7_ && this)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push("OPEN_RIGHT_MENU");
                              if(_loc8_)
                              {
                                 if(_loc8_)
                                 {
                                    §§push(_loc6_);
                                    if(!(_loc7_ && eventName))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc8_)
                                          {
                                             §§push(1);
                                             if(_loc7_ && this)
                                             {
                                                addr978:
                                             }
                                          }
                                          else
                                          {
                                             addr1001:
                                             §§push(7);
                                             if(_loc8_ || this)
                                             {
                                             }
                                          }
                                          §§goto(addr1178);
                                       }
                                       else
                                       {
                                          §§push("PLAY_LEVEL");
                                          if(_loc8_)
                                          {
                                             if(!_loc7_)
                                             {
                                                §§push(_loc6_);
                                                if(!_loc7_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §§push(2);
                                                         if(_loc7_ && component)
                                                         {
                                                            addr1035:
                                                         }
                                                      }
                                                      §§goto(addr1178);
                                                   }
                                                   else
                                                   {
                                                      §§push("OPEN_MENU");
                                                      if(_loc8_)
                                                      {
                                                         addr873:
                                                         if(_loc8_)
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc8_)
                                                            {
                                                               addr879:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(3);
                                                                     if(_loc8_ || this)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr1130:
                                                                     §§push(11);
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr1133:
                                                                     }
                                                                  }
                                                                  §§goto(addr1178);
                                                                  §§goto(addr1178);
                                                               }
                                                               else
                                                               {
                                                                  §§push("OPEN_AVATAR_CREATOR");
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(!(_loc7_ && eventName))
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§push(4);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§goto(addr1178);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr978);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr1001);
                                                                              }
                                                                              §§goto(addr1178);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push("TOGGLE_SOUNDS");
                                                                              if(!_loc7_)
                                                                              {
                                                                                 addr925:
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    if(_loc8_ || eventName)
                                                                                    {
                                                                                       addr936:
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§push(5);
                                                                                             if(!(_loc7_ && component))
                                                                                             {
                                                                                                §§goto(addr1178);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr978);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr1058:
                                                                                             §§push(9);
                                                                                             if(!(_loc7_ && eventName))
                                                                                             {
                                                                                                §§goto(addr1066);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr1165:
                                                                                                §§goto(addr1178);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1178);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push("TOGGLE_PARTICLES");
                                                                                          if(_loc8_ || this)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                addr959:
                                                                                                §§push(_loc6_);
                                                                                                if(_loc8_ || eventIndex)
                                                                                                {
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(!(_loc7_ && this))
                                                                                                      {
                                                                                                         §§push(6);
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            §§goto(addr978);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr1157:
                                                                                                         §§push(12);
                                                                                                         if(!(_loc7_ && this))
                                                                                                         {
                                                                                                            §§goto(addr1165);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1178);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push("FULLSCREEN_BUTTON");
                                                                                                      if(!(_loc7_ && eventIndex))
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            if(!(_loc7_ && eventName))
                                                                                                            {
                                                                                                               addr998:
                                                                                                               if(§§pop() === §§pop())
                                                                                                               {
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     §§goto(addr1001);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr1130);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push("OPEN_CREDITS");
                                                                                                                  if(_loc8_ || component)
                                                                                                                  {
                                                                                                                     addr1018:
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        addr1021:
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           addr1024:
                                                                                                                           if(§§pop() === §§pop())
                                                                                                                           {
                                                                                                                              if(_loc8_ || component)
                                                                                                                              {
                                                                                                                                 §§push(8);
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1035);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr1133);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr1058);
                                                                                                                              }
                                                                                                                              §§goto(addr1178);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push("CREDITS_BUTTON");
                                                                                                                              if(_loc8_ || component)
                                                                                                                              {
                                                                                                                                 if(!(_loc7_ && eventIndex))
                                                                                                                                 {
                                                                                                                                    addr1052:
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1058);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr1168:
                                                                                                                                             §§push(13);
                                                                                                                                             if(_loc8_ || eventName)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1176);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1178);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push("SOUNDS_BUTTON");
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             addr1070:
                                                                                                                                             if(!(_loc7_ && component))
                                                                                                                                             {
                                                                                                                                                addr1078:
                                                                                                                                                §§push(_loc6_);
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   addr1081:
                                                                                                                                                   if(§§pop() === §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc7_ && eventIndex))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1089);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1157);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push("POPUP_CREDITS_CLOSE");
                                                                                                                                                      if(_loc8_ || eventIndex)
                                                                                                                                                      {
                                                                                                                                                         if(_loc8_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr1114:
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            if(_loc8_ || component)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr1139:
                                                                                                                                                            if(§§pop() === §§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc8_ || this)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1157);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1168);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1168);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr1178:
                                                                                                                                                                  loop31:
                                                                                                                                                                  switch(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     case 0:
                                                                                                                                                                        addr747:
                                                                                                                                                                        if(this.§=!Q§)
                                                                                                                                                                        {
                                                                                                                                                                           this.§=!Q§ = false;
                                                                                                                                                                           addr749:
                                                                                                                                                                           addr743:
                                                                                                                                                                           addr748:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           this.§=!Q§ = true;
                                                                                                                                                                           addr730:
                                                                                                                                                                           addr738:
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                        addr756:
                                                                                                                                                                     case 1:
                                                                                                                                                                        addr720:
                                                                                                                                                                        if(this.§=Q§)
                                                                                                                                                                        {
                                                                                                                                                                           this.§=Q§ = false;
                                                                                                                                                                           addr722:
                                                                                                                                                                           addr721:
                                                                                                                                                                           addr716:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           this.§=Q§ = true;
                                                                                                                                                                           addr711:
                                                                                                                                                                        }
                                                                                                                                                                        addr696:
                                                                                                                                                                        break;
                                                                                                                                                                        addr727:
                                                                                                                                                                     case 2:
                                                                                                                                                                        addr687:
                                                                                                                                                                        SoundEngine.§9!X§("Menu_Confirm");
                                                                                                                                                                        addr688:
                                                                                                                                                                        if(_loc8_ || component)
                                                                                                                                                                        {
                                                                                                                                                                           addr674:
                                                                                                                                                                           if(!(_loc7_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              mNextState = StateChapterSelection.STATE_NAME;
                                                                                                                                                                              addr664:
                                                                                                                                                                              break;
                                                                                                                                                                              addr664:
                                                                                                                                                                              addr671:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr722);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr749);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                        addr700:
                                                                                                                                                                     case 3:
                                                                                                                                                                        loop2:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §5!M§.setItemVisibility("Container_MenuButtons",!§5!M§.getItemByName("Container_MenuButtons").visible);
                                                                                                                                                                           addr654:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop31;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop2;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr639:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr664);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     case 4:
                                                                                                                                                                        break;
                                                                                                                                                                        addr636:
                                                                                                                                                                     case 5:
                                                                                                                                                                        addr617:
                                                                                                                                                                        if(_loc8_ || component)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc7_ && component))
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr721);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr700);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr722);
                                                                                                                                                                     case 6:
                                                                                                                                                                        addr599:
                                                                                                                                                                        §§push(Boolean(!§]!B§.§]!#§()));
                                                                                                                                                                        if(_loc8_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           particlesEnabled = §§pop();
                                                                                                                                                                           §]!B§.§^!Y§(particlesEnabled);
                                                                                                                                                                           loop3:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr572:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §5!M§.getItemByName("MovieClip_ParticlesOff").setVisibility(!particlesEnabled);
                                                                                                                                                                                 continue loop3;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr607:
                                                                                                                                                                           addr582:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr747);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr747);
                                                                                                                                                                        addr612:
                                                                                                                                                                     case 7:
                                                                                                                                                                        addr522:
                                                                                                                                                                        SoundEngine.§9!X§("Menu_Confirm");
                                                                                                                                                                        addr523:
                                                                                                                                                                        if(!(_loc7_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr509:
                                                                                                                                                                           if(!(_loc7_ && eventName))
                                                                                                                                                                           {
                                                                                                                                                                              AngryBirdsFP11.§5V§.§>J§();
                                                                                                                                                                              addr497:
                                                                                                                                                                              if(_loc8_ || eventName)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                    addr490:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr607);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr674);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr617);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr711);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr696);
                                                                                                                                                                        addr535:
                                                                                                                                                                     case 8:
                                                                                                                                                                        addr474:
                                                                                                                                                                        §§push(SoundEngine.§9!X§("Menu_Confirm"));
                                                                                                                                                                        if(!(_loc7_ && eventName))
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           break;
                                                                                                                                                                           addr468:
                                                                                                                                                                           addr482:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr687);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                        addr487:
                                                                                                                                                                     case 9:
                                                                                                                                                                        addr450:
                                                                                                                                                                        §§push(SoundEngine.§9!X§("Menu_Confirm"));
                                                                                                                                                                        if(!(_loc7_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           addr458:
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              addr442:
                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 mNextState = StateCreditsNew.STATE_NAME;
                                                                                                                                                                                 addr432:
                                                                                                                                                                                 if(_loc8_ || component)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr423:
                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§=!Q§ = false;
                                                                                                                                                                                       addr415:
                                                                                                                                                                                       break;
                                                                                                                                                                                       addr420:
                                                                                                                                                                                       addr415:
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr654);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr535);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr664);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr730);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr636);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr474);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr687);
                                                                                                                                                                        addr465:
                                                                                                                                                                     case 10:
                                                                                                                                                                        loop6:
                                                                                                                                                                        while(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(SoundEngine.§9!X§("Menu_Confirm"));
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop6;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc8_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc7_ && eventIndex))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(AngryBirdsFP11.§+i§());
                                                                                                                                                                                             if(_loc8_ || component)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(!§§pop());
                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc8_ || eventIndex)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc8_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                            loop7:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               soundsEnabled = §§pop();
                                                                                                                                                                                                               addr369:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              AngryBirdsFP11.§72§(soundsEnabled);
                                                                                                                                                                                                                              while(!(_loc7_ && eventName))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop7;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr538);
                                                                                                                                                                                                                              addr336:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr612);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr599);
                                                                                                                                                                                                                        addr339:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr727);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr572);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr722);
                                                                                                                                                                                                            addr368:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr720);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr599);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr368);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr748);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr738);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr415);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr711);
                                                                                                                                                                                 addr403:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr522);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr450);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr458);
                                                                                                                                                                     case 11:
                                                                                                                                                                        break;
                                                                                                                                                                        addr215:
                                                                                                                                                                     case 12:
                                                                                                                                                                        loop14:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc7_ && eventName))
                                                                                                                                                                              {
                                                                                                                                                                                 trace("Open Mighty Eagle Video");
                                                                                                                                                                                 loop15:
                                                                                                                                                                                 while(!(_loc7_ && eventName))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc7_ && eventName))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc8_ || component)
                                                                                                                                                                                       {
                                                                                                                                                                                          loop16:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(this.§1!f§ == null)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc7_ && eventIndex))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc7_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§1!f§ = new YouTubeVideo("http://www.youtube.com/v/-eyig_V-_5o");
                                                                                                                                                                                                                     continue loop14;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr487);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr376);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr474);
                                                                                                                                                                                                            addr153:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr465);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr39:
                                                                                                                                                                                                         if(!(_loc8_ || eventIndex))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc8_ || component)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc8_ || component)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr779:
                                                                                                                                                                                                                  break loop31;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               loop22:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  (§5!M§.getItemByName("MovieClip_YouTubeArea") as §6#§).setVisibility(true);
                                                                                                                                                                                                                  addr73:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc8_ || eventName))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop14;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc8_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr39);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop21:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop15;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr106:
                                                                                                                                                                                                                                 if(!_loc7_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop22;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr109:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc7_ && eventIndex))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc7_ && eventIndex))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             (§5!M§.getItemByName("MovieClip_YouTubeArea") as §6#§).changeMovieClip(this.§1!f§);
                                                                                                                                                                                                                                             continue loop21;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr403);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop16;
                                                                                                                                                                                                                                    §§goto(addr106);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr268);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr153);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr218);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr339);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr747);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr423);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr258);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr450);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr779);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr482);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr671);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr711);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr490);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr369);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr336);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr215);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                  }
                                                                                                                                                                  return;
                                                                                                                                                                  §§push(13);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1178);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1168);
                                                                                                                                                         }
                                                                                                                                                         addr1138:
                                                                                                                                                         §§goto(addr1139);
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1138);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1178);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr1137:
                                                                                                                                             §§goto(addr1138);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1078);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1168);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1078);
                                                                                                                              }
                                                                                                                              §§goto(addr1137);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(§§pop() === §§pop())
                                                                                                                        {
                                                                                                                           if(_loc8_ || this)
                                                                                                                           {
                                                                                                                              §§goto(addr1130);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr1168);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push("ME_POPUP_VIDEO");
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              §§goto(addr1137);
                                                                                                                           }
                                                                                                                           §§goto(addr1138);
                                                                                                                        }
                                                                                                                        §§goto(addr1168);
                                                                                                                     }
                                                                                                                     §§goto(addr1052);
                                                                                                                  }
                                                                                                                  §§goto(addr1114);
                                                                                                               }
                                                                                                               §§goto(addr1178);
                                                                                                            }
                                                                                                            §§goto(addr1114);
                                                                                                         }
                                                                                                         §§goto(addr1137);
                                                                                                      }
                                                                                                      §§goto(addr1078);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1024);
                                                                                             }
                                                                                             §§goto(addr1137);
                                                                                          }
                                                                                          §§goto(addr1138);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1081);
                                                                                 }
                                                                                 §§goto(addr1070);
                                                                              }
                                                                              §§goto(addr959);
                                                                           }
                                                                        }
                                                                        §§goto(addr936);
                                                                     }
                                                                     §§goto(addr1114);
                                                                  }
                                                                  §§goto(addr925);
                                                               }
                                                            }
                                                            §§goto(addr936);
                                                         }
                                                         §§goto(addr1052);
                                                      }
                                                      §§goto(addr1021);
                                                   }
                                                }
                                                §§goto(addr879);
                                             }
                                             §§goto(addr959);
                                          }
                                          §§goto(addr873);
                                       }
                                    }
                                    §§goto(addr998);
                                 }
                                 §§goto(addr1018);
                              }
                              §§goto(addr925);
                           }
                           §§goto(addr1178);
                        }
                        §§goto(addr1114);
                     }
                  }
                  §§goto(addr1078);
               }
               §§goto(addr1001);
            }
         }
      }
   }
}
