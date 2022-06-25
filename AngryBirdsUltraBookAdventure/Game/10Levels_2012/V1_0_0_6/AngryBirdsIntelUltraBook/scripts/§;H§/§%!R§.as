package §;H§
{
   import §+0§.§,!E§;
   import §-%§.§]!K§;
   import §1!E§.§#?§;
   import §1!E§.§1!=§;
   import §1!E§.§==§;
   import §5!c§.§9'§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import §]+§.§?,§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §%!R§ extends §,!E§
   {
      
      public static const §"!s§:String = "LevelStartState";
      
      private static var §>!"§:BitmapData = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §%!R§))
         {
            §"!s§ = "LevelStartState";
            do
            {
               §>!"§ = null;
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      private var §%T§:Boolean = false;
      
      private var §3u§:Boolean = false;
      
      private var §+!h§:§]!K§ = null;
      
      private var §9B§:Boolean = false;
      
      private var §%l§:Boolean = false;
      
      private var §"`§:Number = 0;
      
      private var §3[§:Number = 0;
      
      private var §%!o§:Number = 0;
      
      private var §6!#§:Number = 0;
      
      private var §;!D§:Number;
      
      private var §-T§:Number;
      
      private var §+=§:Number;
      
      private var §9!=§:Number;
      
      private var §-O§:§?,§;
      
      public function §%!R§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super(param1,param2);
         }
      }
      
      public static function get §>!B§() : BitmapData
      {
         return §>!"§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            while(true)
            {
               §&!m§ = new §4`§(this);
               loop1:
               while(true)
               {
                  §&!m§.init(§ !I§.§3!a§.Views.View_LevelStart[0]);
                  addr134:
                  while(true)
                  {
                     this.§+!h§ = new §]!K§(§^!c§.§5!Y§);
                     continue loop1;
                  }
               }
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr75);
            }
         }
         §§goto(addr75);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.activate();
            while(true)
            {
               §^!c§.§5!Y§.§@!v§(true);
               addr44:
               if(_loc1_ || this)
               {
                  return;
               }
            }
         }
         loop1:
         while(true)
         {
            §^!c§.setController(this.§+!h§);
            loop2:
            while(true)
            {
               this.§+!h§.init();
               while(true)
               {
                  AngryBirdsFP11.playThemeMusic();
                  loop4:
                  for(; _loc1_ || _loc1_; if(_loc1_ || this)
                  {
                     continue loop1;
                  })
                  {
                     §&!m§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§0!b§());
                     loop5:
                     while(true)
                     {
                        §&!m§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§^!c§.§ !?§());
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue loop4;
                           }
                           continue loop5;
                           addr86:
                           §&!m§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§'!>§ ? false : true);
                           if(_loc2_)
                           {
                              continue;
                           }
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                           §§goto(addr44);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() == §,!E§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     this.§+=§ = §&!m§.getItemByName("Button_LeftMenuOpen").y - 50;
                     loop1:
                     for(; !(_loc3_ && _loc3_); loop4:
                     while(_loc4_ || _loc2_)
                     {
                        if(!this.§3u§)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              if(!_loc4_)
                              {
                                 addr154:
                                 return _loc2_;
                                 addr153:
                              }
                              §^!c§.§-U§.update(param1);
                           }
                           while(true)
                           {
                           }
                           addr92:
                        }
                        for(; mNextState.length > 0; §§goto(addr92))
                        {
                           if(!(_loc4_ || _loc3_))
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue;
                           }
                           if(!_loc4_)
                           {
                              continue loop4;
                           }
                           §§goto(addr52);
                        }
                        return §,!E§.STATE_STATUS_RUNNING;
                     })
                     {
                        while(true)
                        {
                           this.§9!=§ = §&!m§.getItemByName("Button_RightMenuOpen").y - 50;
                           while(true)
                           {
                              this.§]!t§(param1);
                              continue loop1;
                              addr52:
                              if(!(_loc3_ && this))
                              {
                                 return §,!E§.STATE_STATUS_COMPLETED;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr153);
            }
            §§goto(addr154);
         }
         §§goto(addr141);
      }
      
      private function §]!t§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            (§&!m§.getItemByName("Container_MenuLeftButtons") as §#?§).mClip.scrollRect = new Rectangle(0,0,(§&!m§.getItemByName("Container_MenuLeftButtons") as §#?§).width,this.§;!D§ + 20 - (this.§;!D§ - this.§%!o§));
            loop0:
            while(true)
            {
               (§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).mClip.scrollRect = new Rectangle(0,0,(§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).width,this.§-T§ + 20 - (this.§-T§ - this.§6!#§));
               loop1:
               while(true)
               {
                  §§push(this.§9B§);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(this.§"`§);
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           loop4:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§"`§);
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§push(0.3);
                                       if(_loc2_)
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§pop().§"`§ = §§pop();
                                    addr718:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr701:
                              }
                              while(true)
                              {
                                 §§push(this.§"`§);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(0);
                                    while(_loc2_ || param1)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(this.§%!o§);
                                             loop81:
                                             while(true)
                                             {
                                                §§push(0);
                                                loop82:
                                                while(true)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      loop83:
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§%!o§);
                                                         if(_loc2_)
                                                         {
                                                            §§push(0.5);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop() * param1);
                                                            }
                                                            §§push(§§pop() - §§pop());
                                                         }
                                                         §§pop().§%!o§ = §§pop();
                                                         loop84:
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  loop85:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§%!o§);
                                                                     loop86:
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        loop87:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 if(§§pop() < §§pop())
                                                                                 {
                                                                                    loop88:
                                                                                    while(true)
                                                                                    {
                                                                                       (§&!m§.getItemByName("Container_MenuLeftButtons") as §#?§).setVisibility(false);
                                                                                       loop89:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_ || param1)
                                                                                          {
                                                                                             this.§%!o§ = 0;
                                                                                             loop90:
                                                                                             while(true)
                                                                                             {
                                                                                                addr582:
                                                                                                loop31:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§%l§);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      §§push(this.§3[§);
                                                                                                      loop32:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            loop33:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() > §§pop())
                                                                                                               {
                                                                                                                  loop34:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§push(this);
                                                                                                                        §§push(this.§3[§);
                                                                                                                        if(_loc2_ || this)
                                                                                                                        {
                                                                                                                           §§push(0.5);
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * param1);
                                                                                                                           }
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                        }
                                                                                                                        §§pop().§3[§ = §§pop();
                                                                                                                        loop35:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           (§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).y = (§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).y + 0.5 * param1;
                                                                                                                           addr366:
                                                                                                                           loop36:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc2_ || param1))
                                                                                                                              {
                                                                                                                                 continue loop1;
                                                                                                                              }
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§3[§);
                                                                                                                                    loop39:
                                                                                                                                    while(!_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       loop40:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc2_ || _loc2_))
                                                                                                                                          {
                                                                                                                                             continue loop87;
                                                                                                                                          }
                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                          {
                                                                                                                                             loop41:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   this.§3[§ = 0;
                                                                                                                                                   loop42:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§6!#§);
                                                                                                                                                                  loop74:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop39;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        loop75:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              loop61:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc3_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc3_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this);
                                                                                                                                                                                       §§push(this.§6!#§);
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(0.5);
                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * param1);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().§6!#§ = §§pop();
                                                                                                                                                                                       loop62:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop36;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr315:
                                                                                                                                                                                          if(!(_loc3_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             loop63:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§6!#§);
                                                                                                                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc2_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                      if(_loc2_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop33;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop40;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop75;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   loop47:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§-T§);
                                                                                                                                                                                                            loop48:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop() < §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this);
                                                                                                                                                                                                                        §§push(this.§6!#§);
                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(0.5);
                                                                                                                                                                                                                           if(_loc2_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * param1);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().§6!#§ = §§pop();
                                                                                                                                                                                                                        addr492:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr51:
                                                                                                                                                                                                                           if(_loc3_ && _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr799:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr763:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§"`§);
                                                                                                                                                                                                                                 addr766:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(90);
                                                                                                                                                                                                                                    addr767:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this.§"`§ = 90;
                                                                                                                                                                                                                                             addr771:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr768:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§%!o§);
                                                                                                                                                                                                                                          loop22:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§;!D§);
                                                                                                                                                                                                                                             addr744:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                                                                      §§push(this.§%!o§);
                                                                                                                                                                                                                                                      if(_loc2_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(0.5);
                                                                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * param1);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop().§%!o§ = §§pop();
                                                                                                                                                                                                                                                      break loop61;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr745:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr719:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.§%!o§);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§;!D§);
                                                                                                                                                                                                                                                      break loop48;
                                                                                                                                                                                                                                                      addr415:
                                                                                                                                                                                                                                                      if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop22;
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
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr315);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr475:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§6!#§);
                                                                                                                                                                                                                     addr413:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop86;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr415);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop86;
                                                                                                                                                                                                                     §§goto(addr492);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(this.§-T§);
                                                                                                                                                                                                               break;
                                                                                                                                                                                                               if(!(_loc2_ || _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§6!#§ = this.§-T§;
                                                                                                                                                                                                                     addr453:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr455:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr186:
                                                                                                                                                                                                                              loop54:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 (§&!m§.getItemByName("Button_LeftMenuOpen") as §==§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                                                                                                                                                                 addr196:
                                                                                                                                                                                                                                 addr595:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop34;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc3_ && this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    (§&!m§.getItemByName("Button_RightMenuOpen") as §==§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                                                                                                                                                                    loop56:
                                                                                                                                                                                                                                    for(; !(_loc3_ && _loc2_); loop57:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc3_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc2_ || _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop90;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc3_ && _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop88;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!(_loc2_ || param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop83;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                (§&!m§.getItemByName("Button_RightMenuOpen") as §==§).mClip.MovieClip_RightMenuImage.rotation = this.§3[§;
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop57;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop42;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr259:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc2_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr266:
                                                                                                                                                                                                                                                         (§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).setVisibility(false);
                                                                                                                                                                                                                                                         break loop57;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr768);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr44:
                                                                                                                                                                                                                                                   if(_loc3_ && _loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr51);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop85;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(_loc2_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   this.§%!o§ = this.§;!D§;
                                                                                                                                                                                                                                                   addr738:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr694:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop31;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             loop91:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                (§&!m§.getItemByName("Container_MenuLeftButtons") as §#?§).setVisibility(true);
                                                                                                                                                                                                                                                addr811:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.§"`§);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(90);
                                                                                                                                                                                                                                                      addr776:
                                                                                                                                                                                                                                                      addr548:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr777);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr763);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!(_loc2_ || param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr556);
                                                                                                                                                                                                                                                      §§push(180);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop91;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop56;
                                                                                                                                                                                                                                    },while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this.§6!#§ = 0;
                                                                                                                                                                                                                                             break loop56;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop35;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop62;
                                                                                                                                                                                                                                       §§goto(addr266);
                                                                                                                                                                                                                                    },if(!_loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break loop54;
                                                                                                                                                                                                                                    },continue loop54)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc2_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             (§&!m§.getItemByName("Button_LeftMenuOpen") as §==§).mClip.MovieClip_LeftMenuImage.rotation = this.§"`§;
                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop89;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       loop69:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc2_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             loop70:
                                                                                                                                                                                                                                             do
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§3[§);
                                                                                                                                                                                                                                                addr496:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(180);
                                                                                                                                                                                                                                                   addr497:
                                                                                                                                                                                                                                                   while(!_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            this.§3[§ = 180;
                                                                                                                                                                                                                                                            break loop54;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr500:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop47;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr456:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr556:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc2_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop70;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop82;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop70;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(§§pop() >= §§pop());
                                                                                                                                                                                                                                             
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                                                                §§push(this.§3[§);
                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(0.5);
                                                                                                                                                                                                                                                   if(_loc2_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * param1);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().§3[§ = §§pop();
                                                                                                                                                                                                                                                addr581:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   (§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).y = (§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).y - 0.5 * param1;
                                                                                                                                                                                                                                                   continue loop69;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr564:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                                                                §§push(this.§"`§);
                                                                                                                                                                                                                                                if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(0.3);
                                                                                                                                                                                                                                                   if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * param1);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().§"`§ = §§pop();
                                                                                                                                                                                                                                                break loop69;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr777:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr799);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc2_ || _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break loop63;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr217);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§3[§);
                                                                                                                                                                                                                                    addr539:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop3;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop81;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop3;
                                                                                                                                                                                                                                    §§goto(addr198);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop0;
                                                                                                                                                                                                                              §§goto(addr455);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr376:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr738);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr449:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr376);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(_loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr727);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr694);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr744);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr766);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr496);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop8;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop74;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop61;
                                                                                                                                                                                             addr220:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr475);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop82;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr745);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr453);
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr719);
                                                                                                                                                                              }
                                                                                                                                                                              addr762:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr220);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr413);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr278:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr564);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr500);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr449);
                                                                                                                                                      if(_loc3_ && param1)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc2_)
                                                                                                                                                      {
                                                                                                                                                         continue loop84;
                                                                                                                                                      }
                                                                                                                                                      §§push(§&!m§.getItemByName("Container_MenuLeftButtons") as §#?§);
                                                                                                                                                      §§push(this.§+=§);
                                                                                                                                                      if(_loc2_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - this.§%!o§);
                                                                                                                                                      }
                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                      while(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§&!m§.getItemByName("Container_MenuRightButtons") as §#?§);
                                                                                                                                                            §§push(this.§9!=§);
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - this.§6!#§);
                                                                                                                                                            }
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            if(!_loc2_)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr44);
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         continue loop41;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr196);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr581);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr278);
                                                                                                                                       }
                                                                                                                                       continue loop87;
                                                                                                                                    }
                                                                                                                                    continue loop32;
                                                                                                                                 }
                                                                                                                                 addr323:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr718);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop81;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           (§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).setVisibility(true);
                                                                                                                        }
                                                                                                                        addr588:
                                                                                                                     }
                                                                                                                     §§goto(addr595);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr323);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr539);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr588);
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc2_ || param1)
                                                                                                {
                                                                                                   if(_loc2_ || _loc2_)
                                                                                                   {
                                                                                                      this.§"`§ = 0;
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   §§goto(addr811);
                                                                                                }
                                                                                                continue loop89;
                                                                                             }
                                                                                             addr669:
                                                                                          }
                                                                                          §§goto(addr771);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr582);
                                                                              }
                                                                              §§goto(addr776);
                                                                           }
                                                                           §§goto(addr767);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr601:
                                                               }
                                                               §§goto(addr762);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr701);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr601);
                                                }
                                             }
                                          }
                                          addr635:
                                       }
                                       §§goto(addr669);
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr804);
                  }
               }
            }
         }
         §§goto(addr734);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§&!m§.getItemByName("Button_Play") as §==§).setComponentVisualState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         while(true)
         {
            this.§%T§ = false;
            while(_loc1_)
            {
               super.deActivate();
               if(!(_loc2_ && this))
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
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(_loc7_ || param1)
         {
            §§push("OPEN_LEFT_MENU");
            if(_loc7_)
            {
               §§push(_loc6_);
               if(_loc7_ || param2)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc8_ && param3))
                     {
                        §§push(0);
                        if(!_loc7_)
                        {
                        }
                     }
                     else
                     {
                        addr632:
                        §§push(10);
                        if(!(_loc7_ || param1))
                        {
                           addr675:
                        }
                     }
                     §§goto(addr680);
                  }
                  else
                  {
                     §§push("OPEN_RIGHT_MENU");
                     if(_loc7_ || param3)
                     {
                        §§push(_loc6_);
                        if(!(_loc8_ && this))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc7_)
                              {
                                 §§push(1);
                                 if(_loc8_)
                                 {
                                    addr530:
                                 }
                              }
                              else
                              {
                                 addr550:
                                 §§push(6);
                                 if(!_loc7_)
                                 {
                                    addr594:
                                 }
                              }
                              §§goto(addr680);
                           }
                           else
                           {
                              §§push("PLAY_LEVEL");
                              if(!_loc8_)
                              {
                                 §§push(_loc6_);
                                 if(_loc7_ || param3)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc8_ && param3))
                                       {
                                          §§push(2);
                                          if(!_loc7_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr494:
                                          §§push(4);
                                          if(!(_loc7_ || param3))
                                          {
                                             §§goto(addr640);
                                          }
                                       }
                                       §§goto(addr680);
                                    }
                                    else
                                    {
                                       §§push("OPEN_MENU");
                                       if(!(_loc8_ && param3))
                                       {
                                          §§push(_loc6_);
                                          if(!_loc8_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc8_ && param3))
                                                {
                                                   §§push(3);
                                                   if(!(_loc7_ || param3))
                                                   {
                                                      addr622:
                                                   }
                                                   §§goto(addr680);
                                                }
                                                else
                                                {
                                                   §§goto(addr550);
                                                }
                                             }
                                             else
                                             {
                                                §§push("OPEN_AVATAR_CREATOR");
                                                if(_loc7_ || this)
                                                {
                                                   §§push(_loc6_);
                                                   if(!_loc8_)
                                                   {
                                                      addr486:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc8_ && param3))
                                                         {
                                                            §§goto(addr494);
                                                         }
                                                         §§goto(addr680);
                                                      }
                                                      else
                                                      {
                                                         §§push("TOGGLE_SOUNDS");
                                                         if(_loc7_ || param3)
                                                         {
                                                            addr511:
                                                            §§push(_loc6_);
                                                            if(!(_loc8_ && this))
                                                            {
                                                               addr519:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(5);
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        §§goto(addr530);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr568:
                                                                     §§push(7);
                                                                     if(_loc8_)
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr680);
                                                               }
                                                               else
                                                               {
                                                                  §§push("TOGGLE_PARTICLES");
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              §§goto(addr550);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr665:
                                                                              §§push(11);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 addr668:
                                                                              }
                                                                              §§goto(addr680);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("FULLSCREEN_BUTTON");
                                                                           if(_loc7_)
                                                                           {
                                                                              addr557:
                                                                              §§push(_loc6_);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 addr560:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc8_ && param2))
                                                                                    {
                                                                                       §§goto(addr568);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr672:
                                                                                       §§push(12);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§goto(addr675);
                                                                                       }
                                                                                       §§goto(addr680);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push("OPEN_CREDITS");
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       addr580:
                                                                                       §§push(_loc6_);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          addr583:
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(!(_loc8_ && this))
                                                                                             {
                                                                                                §§push(8);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§goto(addr594);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr668);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr614:
                                                                                                §§push(9);
                                                                                                if(!(_loc8_ && param1))
                                                                                                {
                                                                                                   §§goto(addr622);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr675);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr680);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push("CREDITS_BUTTON");
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr598:
                                                                                                §§push(_loc6_);
                                                                                                if(_loc7_ || this)
                                                                                                {
                                                                                                   addr606:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(_loc7_ || param1)
                                                                                                      {
                                                                                                         §§goto(addr614);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr672);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push("SOUNDS_BUTTON");
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         addr626:
                                                                                                         §§push(_loc6_);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            addr629:
                                                                                                            if(§§pop() === §§pop())
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  §§goto(addr632);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr672);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push("POPUP_CREDITS_CLOSE");
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§push(_loc6_);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     addr657:
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        if(_loc7_ || param2)
                                                                                                                        {
                                                                                                                           §§goto(addr665);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr672);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr670:
                                                                                                                        §§push("ME_POPUP_VIDEO");
                                                                                                                        §§push(_loc6_);
                                                                                                                     }
                                                                                                                     §§goto(addr672);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr670);
                                                                                                            }
                                                                                                            §§goto(addr672);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr670);
                                                                                                   }
                                                                                                   §§goto(addr672);
                                                                                                }
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   §§goto(addr672);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr680:
                                                                                                   loop12:
                                                                                                   switch(§§pop())
                                                                                                   {
                                                                                                      case 0:
                                                                                                         addr361:
                                                                                                         if(this.§9B§)
                                                                                                         {
                                                                                                            addr362:
                                                                                                            this.§9B§ = false;
                                                                                                            addr365:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            this.§9B§ = true;
                                                                                                            addr356:
                                                                                                         }
                                                                                                         break;
                                                                                                      case 1:
                                                                                                         addr335:
                                                                                                         if(this.§%l§)
                                                                                                         {
                                                                                                            this.§%l§ = false;
                                                                                                            addr349:
                                                                                                            addr336:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            this.§%l§ = true;
                                                                                                            addr329:
                                                                                                         }
                                                                                                         break;
                                                                                                      case 2:
                                                                                                         §9'§.playSound("Menu_Confirm");
                                                                                                         mNextState = §,!]§.§"!s§;
                                                                                                         addr315:
                                                                                                         break;
                                                                                                         addr322:
                                                                                                         addr315:
                                                                                                      case 3:
                                                                                                         §&!m§.setItemVisibility("Container_MenuButtons",!§&!m§.getItemByName("Container_MenuButtons").visible);
                                                                                                         break;
                                                                                                         addr309:
                                                                                                      case 4:
                                                                                                         break;
                                                                                                      case 5:
                                                                                                         break;
                                                                                                      case 6:
                                                                                                         addr291:
                                                                                                         §§push(§^!c§.§ !?§());
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            addr294:
                                                                                                            §§push(!§§pop());
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               _loc4_ = §§pop();
                                                                                                               §^!c§.§9!p§(_loc4_);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §&!m§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr322);
                                                                                                               }
                                                                                                               break;
                                                                                                               addr297:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr335);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr361);
                                                                                                         }
                                                                                                         break;
                                                                                                      case 7:
                                                                                                         §9'§.playSound("Menu_Confirm");
                                                                                                         AngryBirdsFP11.§3l§.§1T§();
                                                                                                         break;
                                                                                                         addr259:
                                                                                                         addr252:
                                                                                                      case 8:
                                                                                                         §9'§.playSound("Menu_Confirm");
                                                                                                         addr238:
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            if(!(_loc8_ && param2))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr315);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr309);
                                                                                                         }
                                                                                                         break;
                                                                                                      case 9:
                                                                                                         §9'§.playSound("Menu_Confirm");
                                                                                                         mNextState = §9!3§.§"!s§;
                                                                                                         this.§9B§ = false;
                                                                                                         addr216:
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr259);
                                                                                                         break;
                                                                                                         addr224:
                                                                                                         addr231:
                                                                                                      case 10:
                                                                                                         §9'§.playSound("Menu_Confirm");
                                                                                                         while(!(_loc8_ && this))
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               §§push(AngryBirdsFP11.§0!b§());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc8_ && this))
                                                                                                                  {
                                                                                                                     §§push(!§§pop());
                                                                                                                     loop3:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc5_ = §§pop();
                                                                                                                        addr188:
                                                                                                                        while(_loc7_ || param3)
                                                                                                                        {
                                                                                                                           AngryBirdsFP11.§5!C§(_loc5_);
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        §§goto(addr252);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr291);
                                                                                                                  }
                                                                                                                  §§goto(addr362);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr349);
                                                                                                            if(!(_loc7_ || param2))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(!(_loc8_ && this))
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  break loop12;
                                                                                                               }
                                                                                                               §§goto(addr362);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr224);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr216);
                                                                                                      case 11:
                                                                                                         break;
                                                                                                      case 12:
                                                                                                         if(this.§-O§ == null)
                                                                                                         {
                                                                                                            loop8:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc7_ || this)
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     this.§-O§ = new §?,§("http://www.youtube.com/v/-eyig_V-_5o");
                                                                                                                     loop9:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        loop10:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           (§&!m§.getItemByName("MovieClip_YouTubeArea") as §1!=§).changeMovieClip(this.§-O§);
                                                                                                                           while(!_loc8_)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 if(_loc7_ || param1)
                                                                                                                                 {
                                                                                                                                    (§&!m§.getItemByName("MovieClip_YouTubeArea") as §1!=§).setVisibility(true);
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          continue loop8;
                                                                                                                                       }
                                                                                                                                       if(_loc7_ || param3)
                                                                                                                                       {
                                                                                                                                          if(!(_loc8_ && param2))
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ && this))
                                                                                                                                             {
                                                                                                                                                if(true)
                                                                                                                                                {
                                                                                                                                                   break loop12;
                                                                                                                                                }
                                                                                                                                                addr366:
                                                                                                                                                continue loop10;
                                                                                                                                             }
                                                                                                                                             §§goto(addr329);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr297);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr267);
                                                                                                                                    }
                                                                                                                                    break loop12;
                                                                                                                                 }
                                                                                                                                 §§goto(addr336);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr238);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                        §§goto(addr335);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr356);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr231);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr366);
                                                                                                   }
                                                                                                   return;
                                                                                                   §§push(13);
                                                                                                }
                                                                                                §§goto(addr680);
                                                                                             }
                                                                                             §§goto(addr626);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr657);
                                                                                    }
                                                                                    §§goto(addr626);
                                                                                 }
                                                                                 §§goto(addr672);
                                                                              }
                                                                              §§goto(addr583);
                                                                           }
                                                                           §§goto(addr670);
                                                                        }
                                                                        §§goto(addr680);
                                                                     }
                                                                     §§goto(addr629);
                                                                  }
                                                                  §§goto(addr580);
                                                               }
                                                            }
                                                            §§goto(addr606);
                                                         }
                                                         §§goto(addr557);
                                                      }
                                                   }
                                                   §§goto(addr519);
                                                }
                                                §§goto(addr670);
                                             }
                                             §§goto(addr680);
                                          }
                                          §§goto(addr560);
                                       }
                                       §§goto(addr598);
                                    }
                                 }
                                 §§goto(addr486);
                              }
                              §§goto(addr557);
                           }
                        }
                        §§goto(addr583);
                     }
                     §§goto(addr511);
                  }
               }
               §§goto(addr560);
            }
            §§goto(addr598);
         }
         §§goto(addr568);
      }
   }
}
