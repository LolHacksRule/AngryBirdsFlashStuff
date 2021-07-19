package §'!A§
{
   import §'p§.§`!T§;
   import §1"2§.§'s§;
   import §=!M§.§9!P§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §-!2§ extends §-!S§
   {
       
      
      public var mParentContainer:§`!T§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §?C§:Boolean = false;
      
      public var §-j§:Boolean = true;
      
      public var §%!%§:Boolean = false;
      
      public var §1!p§:Boolean = false;
      
      private var §%!5§:§]!b§;
      
      private var §+g§:Boolean = false;
      
      protected var §<!l§:Boolean = false;
      
      private var §4r§:Number;
      
      private var §+" §:Number;
      
      private var §+d§:Number;
      
      private var §5!§:Number;
      
      private var §%!!§:String;
      
      private var §;i§:String;
      
      private var §'!$§:String;
      
      private var §!!$§:String;
      
      private var §`!O§:String;
      
      private var §-"6§:String;
      
      public function §-!2§(param1:XML, param2:§`!T§, param3:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[5] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[6] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(NaN);
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[7] = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(true)
                                    {
                                       §§push(NaN);
                                       loop10:
                                       while(true)
                                       {
                                          §§pop().§§slot[8] = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             while(true)
                                             {
                                                §§push(null);
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                if(!(_loc5_ || param1))
                                                {
                                                   continue loop1;
                                                }
                                                §§pop().§§slot[9] = §§pop();
                                                while(true)
                                                {
                                                   §§push(§§newactivation());
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§pop().§§slot[1] = param1;
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         while(true)
                                                         {
                                                            §§pop().§§slot[2] = param2;
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(§§newactivation());
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§pop().§§slot[3] = param3;
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     this.mParentContainer = parentContainer;
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        this.mName = data.@name;
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           loop22:
                                                                           for(; !_loc6_; while(true)
                                                                           {
                                                                              if(!(_loc5_ || param2))
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                              §§push(0.5);
                                                                              if(_loc5_ || param3)
                                                                              {
                                                                                 §§goto(addr514);
                                                                              }
                                                                              §§goto(addr529);
                                                                              §§goto(addr184);
                                                                           },continue loop10)
                                                                           {
                                                                              if(!§§pop().§§slot[3])
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop().§§slot[1].@fromLibrary.toString().toUpperCase() != "TRUE")
                                                                                    {
                                                                                       §§push(this.mParentContainer);
                                                                                       loop24:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop25:
                                                                                             while(true)
                                                                                             {
                                                                                                this.mClip = this.mParentContainer.mClip.getChildByName(this.mName) as MovieClip;
                                                                                                loop26:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc6_ && param1))
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(this.mClip == null)
                                                                                                      {
                                                                                                         loop27:
                                                                                                         while(_loc5_)
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            loop28:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push("Asset instance not found!! [" + this.mName);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + "] parent: [");
                                                                                                                  if(!(_loc6_ && param3))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + this.mParentContainer.mName);
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr622:
                                                                                                                     §§pop().§§slot[6] = §§pop();
                                                                                                                     loop29:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §9!P§.log(error);
                                                                                                                        while(!_loc6_)
                                                                                                                        {
                                                                                                                           function():void
                                                                                                                           {
                                                                                                                              throw new Error(error);
                                                                                                                           }();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr548:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 continue loop28;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr60:
                                                                                                                           if(_loc6_ && param2)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           this.§<!w§(data);
                                                                                                                           addr67:
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 addr34:
                                                                                                                                 if(!(_loc6_ && param2))
                                                                                                                                 {
                                                                                                                                    addr41:
                                                                                                                                    if(!(_loc5_ || param1))
                                                                                                                                    {
                                                                                                                                       loop80:
                                                                                                                                       for(; _loc5_ || param2; §§goto(addr41))
                                                                                                                                       {
                                                                                                                                          loop81:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             super(targetSprite);
                                                                                                                                             addr93:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      this.readInitialVisibility(data);
                                                                                                                                                      loop83:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_ || param3)
                                                                                                                                                         {
                                                                                                                                                            addr80:
                                                                                                                                                            if(_loc5_ || this)
                                                                                                                                                            {
                                                                                                                                                               this.§>t§(data);
                                                                                                                                                               loop84:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           break loop83;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr60);
                                                                                                                                                                     }
                                                                                                                                                                     while(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           this.§1!p§ = true;
                                                                                                                                                                           break loop84;
                                                                                                                                                                        }
                                                                                                                                                                        while(!(_loc6_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.mParentContainer);
                                                                                                                                                                           loop98:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().mClip.addChild(this.mClip);
                                                                                                                                                                              addr735:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr691:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr548);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop98;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop11;
                                                                                                                                                                     }
                                                                                                                                                                     loop53:
                                                                                                                                                                     while(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc5_ || this))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop26;
                                                                                                                                                                        }
                                                                                                                                                                        loop54:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§newactivation());
                                                                                                                                                                           loop55:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().§§slot[9] = this.getParentView().§8"-§(color,alpha);
                                                                                                                                                                              addr391:
                                                                                                                                                                              loop56:
                                                                                                                                                                              while(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.mClip.addChildAt(tmp,0);
                                                                                                                                                                                    while(_loc5_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.mParentContainer);
                                                                                                                                                                                          if(_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc5_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                if(!_loc6_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr363:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         break loop83;
                                                                                                                                                                                                         addr307:
                                                                                                                                                                                                         §§push(§§pop().§§slot[1].@isBehind.toString().toUpperCase() == "TRUE");
                                                                                                                                                                                                         if(_loc6_ && this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop60:
                                                                                                                                                                                                               while(!_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§newactivation());
                                                                                                                                                                                                                  loop61:
                                                                                                                                                                                                                  for(; _loc5_; if(!(_loc5_ || param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  },if(!(_loc5_ || this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop22;
                                                                                                                                                                                                                  },if(_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop14;
                                                                                                                                                                                                                  },§§pop().§§slot[4] = this.mClip,while(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr199);
                                                                                                                                                                                                                     §§goto(addr80);
                                                                                                                                                                                                                  },§§goto(addr332))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop().§%!%§)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§newactivation());
                                                                                                                                                                                                                              addr333:
                                                                                                                                                                                                                              addr433:
                                                                                                                                                                                                                              addr484:
                                                                                                                                                                                                                              while(_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                                 break loop81;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr529:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(parseFloat(data.@overlayAlpha)));
                                                                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().§§slot[8] = §§pop();
                                                                                                                                                                                                                                 continue loop53;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(!_loc6_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop().§§slot[7] = §§pop();
                                                                                                                                                                                                                                 break loop53;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop().§§slot[8] = §§pop();
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§newactivation());
                                                                                                                                                                                                                                    addr454:
                                                                                                                                                                                                                                    while(_loc5_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop().§§slot[1].@overlayColor.toString() != "")
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(!_loc6_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§newactivation());
                                                                                                                                                                                                                                             loop46:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop3;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr702:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop().§§slot[5] = §>!]§.§1!8§(this.mName);
                                                                                                                                                                                                                                                   break loop56;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr271:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc5_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop23;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop46;
                                                                                                                                                                                                                                                   addr232:
                                                                                                                                                                                                                                                   loop69:
                                                                                                                                                                                                                                                   while(!(_loc6_ && param3))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop().§§slot[1].@animateOnActivation.toString().toUpperCase() == "TRUE")
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr245);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop61;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop69;
                                                                                                                                                                                                                                                               addr102:
                                                                                                                                                                                                                                                               if(_loc6_ && param3)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop55;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr333);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop61;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr173:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop23;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop3;
                                                                                                                                                                                                                                             if(_loc6_ && this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!this.mClip.MouseHitArea)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop81;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                loop76:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc5_ || param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         this.mClip.MouseHitArea.alpha = 0;
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                                                                                                                            continue loop0;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr172:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr582);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr230:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr232);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop76;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr298:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop25;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr230);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.mParentContainer);
                                                                                                                                                                                                                                                   addr658:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().mClip.addChild(this.mClip);
                                                                                                                                                                                                                                                      addr662:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr624:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr656:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr548);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          loop36:
                                                                                                                                                                                                                                          while(!_loc6_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this.§%!%§ = true;
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§newactivation());
                                                                                                                                                                                                                                                      break loop61;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop29;
                                                                                                                                                                                                                                                addr489:
                                                                                                                                                                                                                                                if(_loc6_ && param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                                                                                                                   addr413:
                                                                                                                                                                                                                                                   while(_loc5_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop().§§slot[1].@overlayAlpha.toString() == "")
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop54;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc5_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr433);
                                                                                                                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               this.mClip = clip;
                                                                                                                                                                                                                                                               break loop36;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr742:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr199:
                                                                                                                                                                                                                                                         if(_loc6_ && param3)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr206);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr731);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop28;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop19;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr567:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr411);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.mParentContainer);
                                                                                                                                                                                                                                          if(_loc5_ || param3)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr722);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr691);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr731);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop6;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop7;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr332:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr271);
                                                                                                                                                                                                                           §§push(§§newactivation());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr464);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break loop81;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(16777215));
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().§§slot[7] = §§pop();
                                                                                                                                                                                                                        break loop60;
                                                                                                                                                                                                                        addr514:
                                                                                                                                                                                                                        if(_loc6_ && param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!(_loc5_ || param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop10;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr529);
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop18;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(_loc5_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§newactivation());
                                                                                                                                                                                                                  continue loop22;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr662);
                                                                                                                                                                                                               addr322:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr230);
                                                                                                                                                                                                            §§goto(addr307);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr320:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr363:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr320);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr363);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr731);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr658);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop24;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop20;
                                                                                                                                                                                    addr372:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr701:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr702);
                                                                                                                                                                              }
                                                                                                                                                                              while(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 this.mClip = new cls();
                                                                                                                                                                                 continue loop20;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop17;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr245:
                                                                                                                                                                     while(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr489);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr532);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                                  §§goto(addr67);
                                                                                                                                                               }
                                                                                                                                                               while(!(_loc6_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc6_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     this.mClip.stop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr173);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop27;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop8;
                                                                                                                                                                     addr225:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr391);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr372);
                                                                                                                                                               addr54:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr197);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr172);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr307);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr454);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr333);
                                                                                                                                                         §§goto(addr363);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr413);
                                                                                                                                                      addr73:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr322);
                                                                                                                                                }
                                                                                                                                                §§goto(addr156);
                                                                                                                                                §§goto(addr34);
                                                                                                                                             }
                                                                                                                                             continue loop80;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().mClip.setChildIndex(this.mClip,1);
                                                                                                                                             §§goto(addr341);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc5_ || param3)
                                                                                                                                          {
                                                                                                                                             §§push(§§newactivation());
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                continue loop0;
                                                                                                                                             }
                                                                                                                                             §§goto(addr102);
                                                                                                                                             addr150:
                                                                                                                                          }
                                                                                                                                          §§goto(addr225);
                                                                                                                                          §§goto(addr121);
                                                                                                                                       }
                                                                                                                                       addr121:
                                                                                                                                       §§goto(addr333);
                                                                                                                                       addr143:
                                                                                                                                    }
                                                                                                                                    return;
                                                                                                                                 }
                                                                                                                                 §§goto(addr93);
                                                                                                                              }
                                                                                                                              §§goto(addr73);
                                                                                                                           }
                                                                                                                           §§goto(addr54);
                                                                                                                        }
                                                                                                                        continue loop21;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(§§pop() + "]");
                                                                                                               }
                                                                                                               §§goto(addr622);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      §§goto(addr548);
                                                                                                   }
                                                                                                   §§goto(addr735);
                                                                                                }
                                                                                                continue loop15;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr548);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr701);
                                                                                 }
                                                                              }
                                                                              §§goto(addr742);
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   if(!(_loc5_ || param3))
                                                   {
                                                      continue;
                                                   }
                                                   if(!(_loc5_ || this))
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(this.mParentContainer);
                                                   if(!_loc6_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr656);
                                                      }
                                                      §§goto(addr624);
                                                   }
                                                   §§goto(addr658);
                                                }
                                             }
                                             continue loop4;
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
         }
      }
      
      private function §;!c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§%!5§);
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     this.§%!5§ = new §]!b§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§+d§,this.§5!§,this.§%!!§,this.§;i§,this.§'!$§,this.§!!$§,this.§-"6§,this.§`!O§);
                     addr186:
                     while(true)
                     {
                     }
                     addr186:
                  }
                  §§goto(addr186);
               }
               while(true)
               {
                  §§push(this.§%!5§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().§5[§(this.§4r§,this.§+" §);
                  loop2:
                  while(true)
                  {
                     this.mClip.x = this.§%!5§.x;
                     loop3:
                     while(true)
                     {
                        this.mClip.y = this.§%!5§.y;
                        loop4:
                        while(true)
                        {
                           this.mClip.scaleX = this.§%!5§.scaleX;
                           while(true)
                           {
                              this.mClip.scaleY = this.§%!5§.scaleY;
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop4;
                                 addr39:
                                 if(_loc1_ || _loc2_)
                                 {
                                    continue loop2;
                                 }
                              }
                              addr24:
                              addr64:
                              return;
                              if(_loc2_ && this)
                              {
                                 continue;
                              }
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr24);
                              }
                              else
                              {
                                 §§goto(addr186);
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr186);
      }
      
      private function §>t§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(_loc4_ || _loc2_)
         {
            if(this.mParentContainer)
            {
               §§push(_loc2_);
               loop0:
               while(true)
               {
                  §§push(0);
                  addr134:
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        this.§4r§ = _loc2_;
                        loop2:
                        do
                        {
                           if(!_loc5_)
                           {
                              if(_loc4_)
                              {
                                 continue loop0;
                              }
                              loop9:
                              while(true)
                              {
                                 this.§+" § = _loc3_;
                                 addr145:
                                 while(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       this.§4r§ = _loc2_;
                                       continue loop9;
                                    }
                                    continue loop9;
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    this.§+d§ = this.§4r§;
                                    do
                                    {
                                       this.§5!§ = this.§+" §;
                                    }
                                    while(_loc5_ && param1);
                                    
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    addr50:
                                    if(_loc4_ || param1)
                                    {
                                       break;
                                    }
                                    addr117:
                                    while(true)
                                    {
                                       continue loop6;
                                       §§goto(addr50);
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        while(_loc5_);
                        
                        return;
                     }
                     addr140:
                     while(true)
                     {
                        this.§4r§ = this.mParentContainer.viewWidth;
                     }
                     while(true)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr161);
         }
         §§goto(addr135);
      }
      
      private function §<!w§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            this.§%!!§ = param1.@alignH;
            while(true)
            {
               this.§;i§ = param1.@alignV;
               while(true)
               {
                  this.§'!$§ = param1.@scaleH;
                  while(_loc5_ || this)
                  {
                     this.§!!$§ = param1.@scaleV;
                     loop3:
                     while(true)
                     {
                        addr36:
                        while(true)
                        {
                           this.§`!O§ = param1.@scaleFunction;
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §"!-§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop().toUpperCase());
                        addr88:
                        loop0:
                        while(true)
                        {
                           param1 = §§pop();
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc2_ || _loc2_))
                              {
                                 continue loop0;
                              }
                              if(!_loc2_)
                              {
                                 continue loop3;
                              }
                              if(§§pop() == "TRUE")
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    this.§<!l§ = true;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
                  addr85:
               }
               return;
            }
            §§goto(addr88);
         }
         §§goto(addr85);
      }
      
      private function §&!G§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || param1)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              this.§+g§ = true;
                           }
                           break;
                        }
                        break;
                        addr28:
                        §§push(§§pop().toUpperCase() == "TRUE");
                        if(!_loc2_)
                        {
                           continue;
                        }
                        addr79:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                           §§goto(addr28);
                        }
                        addr79:
                     }
                     return;
                     addr43:
                  }
               }
               §§goto(addr79);
            }
            addr59:
         }
         while(true)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§goto(addr28);
            }
            else
            {
               §§goto(addr59);
            }
            §§goto(addr79);
         }
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1.@visible;
         if(_loc3_ || _loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr178:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr147:
                              while(true)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                                 addr150:
                                 while(_loc3_ || _loc2_)
                                 {
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        addr177:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           this.setVisibility(true);
                           loop8:
                           for(; _loc3_ || this; if(_loc4_ && _loc2_)
                           {
                              continue;
                           },if(_loc3_ || _loc2_)
                           {
                              §§goto(addr120);
                           },§§goto(addr172))
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(param1.@enabled);
                                 loop10:
                                 while(!_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    _loc2_ = §§pop();
                                    loop13:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop15:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr38:
                                                   §§push(§§pop().toUpperCase() == "FALSE");
                                                   if(!(_loc3_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      continue loop15;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         while(§§pop())
                                                         {
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               if(_loc4_ && this)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  continue loop8;
                                                                  addr104:
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  this.setEnabled(false);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.setVisibility(false);
                                                                     continue loop9;
                                                                  }
                                                                  addr159:
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         return;
                                                         addr64:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr177);
                                                      }
                                                   }
                                                   §§goto(addr150);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr64);
                                             }
                                             §§goto(addr104);
                                          }
                                          §§push(_loc2_);
                                          addr120:
                                          continue loop2;
                                          if(_loc4_)
                                          {
                                             continue;
                                          }
                                          if(!_loc3_)
                                          {
                                             continue loop10;
                                          }
                                          §§goto(addr38);
                                       }
                                    }
                                 }
                                 §§goto(addr147);
                              }
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr159);
                     }
                  }
               }
            }
         }
         §§goto(addr130);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.clear();
         }
         while(true)
         {
            §§push(this.mParentContainer);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     continue;
                  }
                  addr113:
               }
               while(true)
               {
                  if(this.mClip.numChildren <= 0)
                  {
                     if(!(_loc2_ && this))
                     {
                        this.mClip = null;
                     }
                     do
                     {
                        this.§%!5§ = null;
                     }
                     while(!(_loc1_ || _loc1_));
                     
                     if(_loc1_ || _loc1_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     this.mClip.removeChildAt(0);
                  }
               }
               return;
            }
            break;
         }
         §§pop().mClip.removeChild(this.mClip);
         §§goto(addr113);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.listenerEventOccured(param1,param2);
            while(true)
            {
               §§push(this.mParentContainer);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && param1))
                     {
                        if(!_loc3_)
                        {
                           addr49:
                           §§push(this.mParentContainer);
                           break;
                        }
                        continue;
                     }
                     addr65:
                  }
                  return;
               }
               break;
            }
            §§pop().containerEventOccured(param1,param2,this);
            §§goto(addr65);
         }
         §§goto(addr49);
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§-j§ = param1;
            loop0:
            while(true)
            {
               this.mClip.visible = this.§-j§ && this.§?C§;
               do
               {
                  if(!(_loc2_ && this))
                  {
                     if(!this.visible)
                     {
                        removeEventListeners();
                        if(!_loc3_)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           §§goto(addr25);
                        }
                     }
                     addEventListeners();
                     continue;
                  }
                  continue loop0;
               }
               while(_loc2_);
               
               §§goto(addr57);
            }
         }
         addr57:
         addr25:
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§?C§ = param1;
            while(true)
            {
               this.mClip.visible = this.§-j§ && this.§?C§;
            }
            addr142:
         }
         loop1:
         while(true)
         {
            §§push(this.visible);
            loop2:
            while(true)
            {
               if(!§§pop())
               {
                  removeEventListeners();
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(this.§1!p§);
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc3_)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(!_loc3_)
                                 {
                                    §§push(param1);
                                    while(!§§pop())
                                    {
                                       this.mClip.gotoAndStop(1);
                                       if(_loc2_)
                                       {
                                          if(_loc3_ && param1)
                                          {
                                             break;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc2_ || this)
                                          {
                                             §§goto(addr24);
                                          }
                                          addr112:
                                          while(true)
                                          {
                                             addEventListeners();
                                             addr114:
                                             while(true)
                                             {
                                                continue loop4;
                                             }
                                          }
                                       }
                                       if(!(_loc3_ && param1))
                                       {
                                          break loop4;
                                       }
                                       §§goto(addr114);
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    this.mClip.gotoAndPlay(1);
                                    §§goto(addr87);
                                 }
                                 §§goto(addr142);
                              }
                              addr24:
                           }
                           continue loop2;
                           return;
                        }
                        §§goto(addr80);
                     }
                     continue loop1;
                  }
               }
               §§goto(addr112);
            }
         }
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.mClip.mouseEnabled != param1)
            {
               if(!_loc2_)
               {
                  this.mClip.mouseEnabled = param1;
               }
               while(true)
               {
               }
               addr75:
            }
            loop1:
            for(; this.mClip.mouseChildren != param1; §§goto(addr75))
            {
               if(!(_loc2_ && _loc3_))
               {
                  while(true)
                  {
                     this.mClip.mouseChildren = param1;
                  }
                  addr47:
               }
               while(true)
               {
                  if(_loc3_)
                  {
                     break loop1;
                  }
                  continue loop1;
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function getParentView() : §'s§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mClip.x = Math.round(param1);
            while(true)
            {
               §§push(this.§%!5§);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     addr65:
                  }
                  return;
               }
               break;
            }
            §§pop().x = this.mClip.x;
         }
         §§goto(addr65);
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.mClip.y = Math.round(param1);
            do
            {
               §§push(this.§%!5§);
               if(_loc3_ || param1)
               {
                  if(!§§pop())
                  {
                     §§goto(addr25);
                  }
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §§push(this.§%!5§);
               }
               §§pop().y = this.mClip.y;
            }
            while(_loc2_);
            
         }
         addr25:
      }
      
      public function get x() : Number
      {
         return this.mClip.x;
      }
      
      public function get y() : Number
      {
         return this.mClip.y;
      }
      
      public function get visible() : Boolean
      {
         return this.mClip.visible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.mClip.visible = param1;
         }
      }
      
      public function get width() : Number
      {
         return this.mClip.width;
      }
      
      public function get height() : Number
      {
         return this.mClip.height;
      }
      
      override public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super.goToFrame(param1,param2);
         }
         loop0:
         while(true)
         {
            §§push(Boolean(this.mClip));
            loop1:
            while(true)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(this.mClip is MovieClip);
                        if(!(_loc3_ && param1))
                        {
                           if(!_loc4_)
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§push(param2);
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          if(!§§pop())
                                          {
                                             this.mClip.gotoAndStop(param1);
                                             if(_loc4_ || this)
                                             {
                                                if(_loc3_)
                                                {
                                                   break loop3;
                                                }
                                                if(_loc4_ || param1)
                                                {
                                                   §§goto(addr25);
                                                }
                                                continue loop3;
                                             }
                                             §§goto(addr89);
                                          }
                                          break loop3;
                                       }
                                       continue loop2;
                                    }
                                    addr82:
                                 }
                                 addr89:
                                 if(_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr25);
                              }
                              addr25:
                              return;
                           }
                        }
                        §§goto(addr82);
                     }
                     this.mClip.gotoAndPlay(param1);
                     §§goto(addr89);
                  }
               }
               §§goto(addr77);
            }
         }
      }
      
      public function get viewWidth() : Number
      {
         return this.§4r§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§+" §;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§4r§ = param1;
            do
            {
               this.§;!c§();
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§+" § = param1;
            do
            {
               this.§;!c§();
            }
            while(_loc2_);
            
         }
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§<!l§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<!l§ = param1;
         }
      }
   }
}
