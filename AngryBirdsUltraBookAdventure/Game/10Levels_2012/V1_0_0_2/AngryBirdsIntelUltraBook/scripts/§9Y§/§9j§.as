package §9Y§
{
   import §2h§.§'!^§;
   import §?!7§.§8;§;
   import §^_§.§!>§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §9j§ extends §6!8§
   {
       
      
      public var mParentContainer:§8;§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §2c§:Boolean = false;
      
      public var §&!g§:Boolean = true;
      
      public var §`!V§:Boolean = false;
      
      public var §@!T§:Boolean = false;
      
      private var §2o§:§7!T§;
      
      private var §!m§:Boolean = false;
      
      protected var §&&§:Boolean = false;
      
      private var § !6§:Number;
      
      private var §0!j§:Number;
      
      private var §9I§:Number;
      
      private var §1I§:Number;
      
      private var §@b§:String;
      
      private var §3!%§:String;
      
      private var §=B§:String;
      
      private var §=!H§:String;
      
      private var §@!!§:String;
      
      private var §5w§:String;
      
      public function §9j§(param1:XML, param2:§8;§, param3:MovieClip = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     addr783:
                     while(!(_loc5_ && param3))
                     {
                        §§pop().§§slot[5] = §§pop();
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
                                 §§pop().§§slot[6] = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    while(true)
                                    {
                                       §§push(NaN);
                                       addr773:
                                       while(true)
                                       {
                                          §§pop().§§slot[7] = §§pop();
                                          addr774:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             continue loop3;
                                          }
                                       }
                                       addr405:
                                       if(!(_loc6_ || this))
                                       {
                                          continue;
                                       }
                                       if(§§pop().§§slot[1].@overlayAlpha.toString() != "")
                                       {
                                          loop62:
                                          while(!(_loc5_ && this))
                                          {
                                             §§push(§§newactivation());
                                             loop63:
                                             while(!_loc5_)
                                             {
                                                addr427:
                                                §§push(Number(parseFloat(data.@overlayAlpha)));
                                                if(_loc6_ || param3)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§pop().§§slot[7] = §§pop();
                                                         loop64:
                                                         while(true)
                                                         {
                                                            if(_loc6_ || param3)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     loop66:
                                                                     for(; !_loc5_; while(true)
                                                                     {
                                                                        if(_loc5_ && this)
                                                                        {
                                                                           continue loop66;
                                                                        }
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr268:
                                                                           if(_loc5_ && this)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop().§§slot[2]);
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!§§pop().§`!V§)
                                                                              {
                                                                                 §§goto(addr203);
                                                                                 §§push(§§newactivation());
                                                                              }
                                                                              §§goto(addr280);
                                                                           }
                                                                           §§goto(addr289);
                                                                        }
                                                                        §§goto(addr525);
                                                                     },continue loop3)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              §§pop().§§slot[8] = this.getParentView().§"!#§(color,alpha);
                                                                           }
                                                                           else
                                                                           {
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
                                                                                          while(!(_loc5_ && param3))
                                                                                          {
                                                                                             this.mClip = this.mParentContainer.mClip.getChildByName(this.mName) as MovieClip;
                                                                                             while(true)
                                                                                             {
                                                                                                if(this.mClip == null)
                                                                                                {
                                                                                                   loop27:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         loop28:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push("Asset instance not found!! [");
                                                                                                            if(!(_loc5_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop() + this.mName);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push("] parent: [");
                                                                                                                  if(_loc6_ || param3)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + this.mParentContainer.mName);
                                                                                                                        if(!(_loc5_ && this))
                                                                                                                        {
                                                                                                                           addr606:
                                                                                                                           §§push(§§pop() + "]");
                                                                                                                        }
                                                                                                                        §§pop().§§slot[5] = §§pop();
                                                                                                                        loop29:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              §!>§.log(error);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc5_ && param2))
                                                                                                                                 {
                                                                                                                                    function():void
                                                                                                                                    {
                                                                                                                                       throw new Error(error);
                                                                                                                                    }();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc5_ && param2))
                                                                                                                                       {
                                                                                                                                          loop45:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§newactivation());
                                                                                                                                             addr525:
                                                                                                                                             while(_loc6_)
                                                                                                                                             {
                                                                                                                                                if(§§pop().§§slot[1].@isOverlay.toString().toUpperCase() != "TRUE")
                                                                                                                                                {
                                                                                                                                                   continue loop24;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§`!V§ = true;
                                                                                                                                                   loop48:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§newactivation());
                                                                                                                                                      addr517:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(16777215));
                                                                                                                                                         addr519:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().§§slot[6] = §§pop();
                                                                                                                                                            loop51:
                                                                                                                                                            while(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                               loop52:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0.5);
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  addr500:
                                                                                                                                                                  while(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§§slot[7] = §§pop();
                                                                                                                                                                     loop54:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_ && this)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop51;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§newactivation());
                                                                                                                                                                              loop55:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop().§§slot[1].@overlayColor.toString() != "")
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§newactivation());
                                                                                                                                                                                       continue loop6;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr469:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    loop60:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§newactivation());
                                                                                                                                                                                       while(_loc6_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr405);
                                                                                                                                                                                          addr160:
                                                                                                                                                                                          if(!(_loc5_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc5_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop().§§slot[1].@animateOnActivation.toString().toUpperCase() != "TRUE")
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop80:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      super(this.mClip);
                                                                                                                                                                                                      loop81:
                                                                                                                                                                                                      for(; _loc6_; if(_loc6_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc6_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            return;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         loop72:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                                                                            if(!(_loc6_ || param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop66;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop28;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr232:
                                                                                                                                                                                                            if(_loc6_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().§§slot[1].@isBehind.toString().toUpperCase() == "TRUE");
                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              continue loop72;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr338:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr336:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop29;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr137);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr338);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            loop22:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!§§pop().§§slot[3])
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§newactivation());
                                                                                                                                                                                                                  continue loop23;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               loop92:
                                                                                                                                                                                                               while(_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc6_ || param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.mClip = clip;
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.mParentContainer);
                                                                                                                                                                                                                        addr684:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.mParentContainer);
                                                                                                                                                                                                                                 addr687:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().mClip.addChild(this.mClip);
                                                                                                                                                                                                                                    §§goto(addr691);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr685:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr663);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr709:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.mParentContainer = parentContainer;
                                                                                                                                                                                                                        break loop92;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr727:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.mName = data.@name;
                                                                                                                                                                                                                  addr716:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§newactivation());
                                                                                                                                                                                                                     continue loop22;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop55;
                                                                                                                                                                                                      })
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr117:
                                                                                                                                                                                                         if(_loc5_ && this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr486:
                                                                                                                                                                                                            while(_loc6_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop60;
                                                                                                                                                                                                               §§goto(addr117);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop48;
                                                                                                                                                                                                            addr486:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         this.readInitialVisibility(data);
                                                                                                                                                                                                         loop82:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc6_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!(_loc6_ || param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop29;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop64;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!(_loc5_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§5!e§(data);
                                                                                                                                                                                                                  while(_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr60:
                                                                                                                                                                                                                     if(_loc6_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop27;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop62;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr180:
                                                                                                                                                                                                                     addr180:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop54;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr280:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§newactivation());
                                                                                                                                                                                                                           continue loop52;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr60);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop52;
                                                                                                                                                                                                                     this.§6!>§(data);
                                                                                                                                                                                                                     if(!(_loc5_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop81;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr691:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr663:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop45;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.mClip.stop();
                                                                                                                                                                                                                  break loop81;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               loop75:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr137:
                                                                                                                                                                                                                  loop76:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§newactivation());
                                                                                                                                                                                                                     if(_loc6_ || param3)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc5_ && param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop52;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!(_loc6_ || this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr160);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(!_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                                           if(_loc6_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().mClip.setChildIndex(this.mClip,0);
                                                                                                                                                                                                                              continue loop75;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr289:
                                                                                                                                                                                                                           addr289:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().mClip.setChildIndex(this.mClip,1);
                                                                                                                                                                                                                              break loop82;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop76;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(_loc6_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().§§slot[2] = param2;
                                                                                                                                                                                                                           break loop25;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        loop14:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().§§slot[1] = param1;
                                                                                                                                                                                                                           addr744:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop14;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr730:
                                                                                                                                                                                                                        addr203:
                                                                                                                                                                                                                        addr742:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop66;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr196:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr180);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc5_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr301:
                                                                                                                                                                                                               if(!(_loc5_ && param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop5;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr137);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr612:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop45;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr301);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr655:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.mClip.addChildAt(tmp,0);
                                                                                                                                                                                                                  continue loop64;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr395:
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(!(_loc5_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop80;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr716);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr180);
                                                                                                                                                                                             }
                                                                                                                                                                                             break loop54;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop6;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr685);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§newactivation());
                                                                                                                                                                              break loop54;
                                                                                                                                                                           }
                                                                                                                                                                           addr673:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().§§slot[4] = §%!G§.§^!B§(this.mName);
                                                                                                                                                                        addr680:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           this.mClip = new cls();
                                                                                                                                                                           break loop62;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop7;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop2;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr356:
                                                                                                                                                   if(!(_loc6_ || this))
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         continue loop24;
                                                                                                                                                      }
                                                                                                                                                      continue loop8;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr744);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr725:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop().§§slot[3] = param3;
                                                                                                                                                §§goto(addr727);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr523:
                                                                                                                                       }
                                                                                                                                       addr647:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.mParentContainer);
                                                                                                                                          addr649:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                §§pop().mClip.addChild(this.mClip);
                                                                                                                                                §§goto(addr655);
                                                                                                                                             }
                                                                                                                                             §§goto(addr687);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr709);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr696);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr606);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr606);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr680);
                                                                                                   }
                                                                                                }
                                                                                                continue loop64;
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr725);
                                                                                             §§goto(addr618);
                                                                                          }
                                                                                          addr618:
                                                                                       }
                                                                                       §§goto(addr523);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr673);
                                                                              }
                                                                           }
                                                                           §§goto(addr395);
                                                                        }
                                                                        §§goto(addr517);
                                                                     }
                                                                     continue loop63;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr769:
                                                               }
                                                               §§goto(addr742);
                                                            }
                                                            §§goto(addr635);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr773);
                                                      }
                                                      §§goto(addr774);
                                                   }
                                                   §§goto(addr519);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§pop().§§slot[6] = §§pop();
                                                         §§goto(addr486);
                                                      }
                                                      break;
                                                      §§goto(addr427);
                                                   }
                                                   §§goto(addr500);
                                                   addr483:
                                                }
                                                §§goto(addr486);
                                             }
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr639);
                                          }
                                       }
                                       §§goto(addr368);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §[x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§2o§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               while(true)
               {
                  this.§2o§ = new §7!T§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§9I§,this.§1I§,this.§@b§,this.§3!%§,this.§=B§,this.§=!H§,this.§5w§,this.§@!!§);
                  addr162:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
         }
         loop6:
         while(true)
         {
            this.mClip.scaleX = this.§2o§.scaleX;
            loop7:
            while(!_loc1_)
            {
               this.mClip.scaleY = this.§2o§.scaleY;
               while(this.§!m§)
               {
                  if(_loc2_ || _loc2_)
                  {
                     if(_loc1_)
                     {
                        continue loop6;
                     }
                     this.mClip.scrollRect = new Rectangle(0,0,this.§9I§,this.§1I§);
                  }
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     continue loop7;
                  }
                  if(!_loc1_)
                  {
                     if(!_loc1_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr118);
               }
               return;
            }
            §§goto(addr102);
         }
      }
      
      private function §5!e§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(_loc4_ || _loc3_)
         {
            if(this.mParentContainer)
            {
               §§push(_loc2_);
               loop0:
               while(true)
               {
                  §§push(0);
                  addr152:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        loop10:
                        while(true)
                        {
                           if(!(_loc5_ && param1))
                           {
                              this.§ !6§ = this.mParentContainer.viewWidth;
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§ !6§ = _loc2_;
                                 loop12:
                                 while(true)
                                 {
                                    this.§0!j§ = _loc3_;
                                    loop9:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop12;
                                       }
                                       loop5:
                                       while(true)
                                       {
                                          this.§9I§ = this.§ !6§;
                                          loop6:
                                          while(_loc4_)
                                          {
                                             if(_loc4_ || this)
                                             {
                                                this.§1I§ = this.§0!j§;
                                                if(_loc4_ || _loc2_)
                                                {
                                                   addr48:
                                                   if(_loc5_)
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop5;
                                                         §§goto(addr48);
                                                      }
                                                      addr72:
                                                   }
                                                   return;
                                                }
                                                continue;
                                             }
                                             addr101:
                                             addr165:
                                             while(true)
                                             {
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(_loc5_ && this)
                                                   {
                                                      break;
                                                   }
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      this.§0!j§ = this.mParentContainer.viewHeight;
                                                      break loop6;
                                                   }
                                                   continue loop9;
                                                }
                                                addr136:
                                                while(true)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             while(true)
                                             {
                                                continue loop0;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop10;
                                             }
                                             while(true)
                                             {
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              addr176:
                           }
                           §§goto(addr165);
                        }
                        addr153:
                     }
                     else
                     {
                        this.§ !6§ = _loc2_;
                     }
                     §§goto(addr136);
                  }
               }
            }
            §§goto(addr176);
         }
         §§goto(addr129);
      }
      
      private function §6!>§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            this.§@b§ = param1.@alignH;
         }
         loop0:
         while(true)
         {
            this.§3!%§ = param1.@alignV;
            while(true)
            {
               this.§=B§ = param1.@scaleH;
               loop2:
               while(!(_loc4_ && this))
               {
                  this.§=!H§ = param1.@scaleV;
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        this.§@!!§ = param1.@scaleFunction;
                        while(_loc5_)
                        {
                           this.§5w§ = param1.@aspectRatioFixed;
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 if(!_loc4_)
                                 {
                                    if(true)
                                    {
                                       var _loc2_:String = param1.@scrollRect;
                                       var _loc3_:String = param1.@scaleOnMouseOver;
                                       if(_loc5_)
                                       {
                                          this.§9!§(_loc2_);
                                          this.§,K§(_loc3_);
                                          addr126:
                                          if(_loc4_ && this)
                                          {
                                             §§goto(addr126);
                                          }
                                       }
                                    }
                                    continue loop4;
                                    return;
                                 }
                                 break loop4;
                              }
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      private function §,K§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1);
                     addr86:
                     loop1:
                     while(true)
                     {
                        §§push(§§pop().toUpperCase());
                        loop2:
                        while(true)
                        {
                           param1 = §§pop();
                           addr89:
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc3_ && param1))
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    if(§§pop() != "TRUE")
                                    {
                                       break;
                                    }
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       this.§&&§ = true;
                                    }
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr86);
         }
         §§goto(addr89);
      }
      
      private function §9!§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(!_loc3_)
                        {
                           this.§!m§ = true;
                        }
                        if(_loc2_ || param1)
                        {
                           addr71:
                           break;
                        }
                        continue loop0;
                     }
                     return;
                     addr57:
                  }
               }
               addr78:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr71);
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.@visible;
         if(!(_loc3_ && _loc3_))
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
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_);
                              while(!_loc3_)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                                 addr37:
                                 if(_loc3_ && param1)
                                 {
                                    continue;
                                 }
                                 §§push(§§pop().toUpperCase() == "FALSE");
                                 if(!_loc3_)
                                 {
                                    addr49:
                                    if(_loc4_ || this)
                                    {
                                       if(_loc4_)
                                       {
                                          loop16:
                                          while(§§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   this.setEnabled(false);
                                                   addr77:
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   loop11:
                                                   while(!_loc3_)
                                                   {
                                                      §§push(_loc2_);
                                                      loop12:
                                                      for(; !_loc3_; §§push(_loc2_),if(_loc3_)
                                                      {
                                                         continue;
                                                      },§§goto(addr37))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         while(!_loc3_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc4_ || this)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(_loc4_ || _loc2_)
                                                                  {
                                                                     §§pop();
                                                                     loop15:
                                                                     while(!(_loc3_ && _loc3_))
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        addr148:
                                                                        while(true)
                                                                        {
                                                                           this.setVisibility(false);
                                                                           break loop15;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ && _loc2_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           addr114:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.@enabled);
                                                                              break loop12;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop1;
                                                                  addr96:
                                                               }
                                                               continue loop16;
                                                            }
                                                            continue loop2;
                                                            §§goto(addr49);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               this.setVisibility(true);
                                                               break loop11;
                                                            }
                                                            §§goto(addr148);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         continue loop11;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr114);
                                                   }
                                                }
                                                §§goto(addr104);
                                             }
                                             §§goto(addr77);
                                          }
                                          return;
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr85);
                                 }
                                 §§goto(addr96);
                              }
                              continue loop0;
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr147);
                     }
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.clear();
            loop0:
            while(true)
            {
               §§push(this.mParentContainer);
               if(_loc1_ || this)
               {
                  if(!§§pop())
                  {
                     §§goto(addr64);
                  }
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(this.mParentContainer);
                  }
               }
               while(true)
               {
                  §§pop().mClip.removeChild(this.mClip);
                  continue loop0;
               }
            }
            addr64:
            while(true)
            {
               if(this.mClip.numChildren <= 0)
               {
                  do
                  {
                     this.mClip = null;
                     do
                     {
                        this.§2o§ = null;
                     }
                     while(!(_loc1_ || _loc2_));
                     
                  }
                  while(_loc2_);
                  
                  if(!_loc2_)
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
         §§goto(addr100);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.listenerEventOccured(param1,param2);
            loop0:
            while(true)
            {
               §§push(this.mParentContainer);
               if(!(_loc4_ && param1))
               {
                  if(!§§pop())
                  {
                     §§goto(addr19);
                  }
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(this.mParentContainer);
                  }
               }
               while(true)
               {
                  §§pop().containerEventOccured(param1,param2,this);
                  continue loop0;
               }
            }
            addr19:
            return;
         }
         §§goto(addr61);
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&!g§ = param1;
            loop0:
            while(true)
            {
               this.mClip.visible = this.§&!g§ && this.§2c§;
               do
               {
                  if(_loc2_)
                  {
                     if(!this.visible)
                     {
                        removeEventListeners();
                        if(!(_loc2_ || this))
                        {
                           continue;
                        }
                        if(!_loc3_)
                        {
                           addr19:
                           return;
                           addr57:
                        }
                     }
                     addEventListeners();
                     continue;
                  }
                  continue loop0;
               }
               while(_loc3_);
               
               §§goto(addr19);
            }
         }
         §§goto(addr57);
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2c§ = param1;
            loop0:
            while(true)
            {
               this.mClip.visible = this.§&!g§ && this.§2c§;
               loop1:
               while(true)
               {
                  §§push(this.visible);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(_loc3_)
                        {
                           addEventListeners();
                           loop8:
                           while(true)
                           {
                              addr70:
                              addr92:
                              while(true)
                              {
                                 §§push(this.§@!T§);
                                 if(!(_loc3_ || this))
                                 {
                                    continue loop2;
                                 }
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(param1);
                                       continue loop2;
                                       addr45:
                                       if(_loc3_ || this)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr20:
                                             return;
                                             addr69:
                                          }
                                          continue loop8;
                                       }
                                    }
                                    addr81:
                                 }
                                 else
                                 {
                                    §§goto(addr20);
                                 }
                              }
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              this.mClip.gotoAndPlay(1);
                              addr98:
                              if(!(_loc3_ || param1))
                              {
                                 while(true)
                                 {
                                    §§goto(addr70);
                                    §§goto(addr98);
                                 }
                                 continue loop0;
                                 addr121:
                              }
                              §§goto(addr20);
                           }
                        }
                        continue loop1;
                        addr126:
                     }
                     removeEventListeners();
                     §§goto(addr121);
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.mClip.mouseEnabled != param1)
            {
               addr75:
               while(true)
               {
                  this.mClip.mouseEnabled = param1;
                  addr79:
                  while(true)
                  {
                  }
               }
               addr75:
            }
            for(; this.mClip.mouseChildren != param1; §§goto(addr79))
            {
               if(_loc2_ || _loc3_)
               {
                  this.mClip.mouseChildren = param1;
               }
               if(_loc3_ && this)
               {
                  continue;
               }
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr75);
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function getParentView() : §'!^§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.mClip.x = Math.round(param1);
            while(true)
            {
               §§push(this.§2o§);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        if(!_loc3_)
                        {
                           addr63:
                           §§push(this.§2o§);
                           break;
                        }
                        continue;
                     }
                     addr69:
                  }
                  return;
               }
               break;
            }
            §§pop().x = this.mClip.x;
            §§goto(addr69);
         }
         §§goto(addr63);
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mClip.y = Math.round(param1);
            while(true)
            {
               §§push(this.§2o§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     addr64:
                  }
                  return;
               }
               break;
            }
            §§pop().y = this.mClip.y;
         }
         §§goto(addr64);
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
         if(_loc3_ || _loc2_)
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.goToFrame(param1,param2);
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
                           if(!(_loc4_ && param2))
                           {
                              if(_loc3_ || param2)
                              {
                                 if(!_loc4_)
                                 {
                                    loop4:
                                    while(§§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(param2);
                                             addr84:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   this.mClip.gotoAndStop(param1);
                                                   if(!_loc4_)
                                                   {
                                                      break loop4;
                                                   }
                                                   break loop3;
                                                }
                                                if(_loc4_)
                                                {
                                                   break loop3;
                                                }
                                             }
                                          }
                                          addr73:
                                       }
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    addr24:
                                    return;
                                    addr69:
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           §§goto(addr84);
                        }
                        addr100:
                        §§goto(addr24);
                     }
                  }
                  §§goto(addr69);
               }
            }
         }
         §§goto(addr73);
      }
      
      public function get viewWidth() : Number
      {
         return this.§ !6§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§0!j§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ !6§ = param1;
         }
         do
         {
            this.§[x§();
         }
         while(!_loc3_);
         
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0!j§ = param1;
         }
         do
         {
            this.§[x§();
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§&&§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&&§ = param1;
         }
      }
   }
}
