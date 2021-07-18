package §0![§
{
   import §"v§.§"! §;
   import §"v§.§3!w§;
   import §%c§.§=!X§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§-!2§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'p§.§+!,§;
   import §'p§.§-!"§;
   import §'p§.§="#§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §[!w§.§4!i§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §7B§ extends §5y§
   {
      
      public static const §'=§:String = "LevelSelectionState";
      
      protected static const §;w§:Number = 0.5;
      
      public static var §[""§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'=§ = "LevelSelectionState";
            while(true)
            {
               §;w§ = 0.5;
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            §[""§ = "";
            if(_loc2_)
            {
               if(!(_loc1_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected var §=l§:Boolean = false;
      
      protected var §`R§:§`!T§;
      
      protected var §3""§:§`!T§;
      
      protected var §=!g§:MovieClip;
      
      protected var §+[§:Array;
      
      protected var §"!v§:Array;
      
      protected var §?!Y§:int = 0;
      
      protected var §8W§:int = 0;
      
      protected var §7!+§:int = 0;
      
      protected var §[!@§:Boolean = false;
      
      protected var §4i§:§3^§ = null;
      
      protected var §9!,§:Dictionary;
      
      protected var §`"4§:Array;
      
      protected var §+!6§:Array;
      
      protected var §?!+§:§4!i§;
      
      protected var §"=§:Number = 0;
      
      public function §7B§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
         }
         do
         {
            this.§9"2§();
         }
         while(_loc1_ && this);
         
         loop1:
         while(true)
         {
            §§push(this.§3""§);
            if(_loc2_)
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  loop2:
                  do
                  {
                     this.§"!v§ = [];
                     while(_loc2_ || _loc2_)
                     {
                        this.§+[§ = [];
                        if(!(_loc1_ && this))
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(!(_loc2_ || this));
                  
                  return;
               }
               §§push(this.§3""§);
            }
            §§pop().mClip.removeChildAt(0);
         }
      }
      
      protected function §9"2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §?E§ = new §'s§(this);
            loop0:
            do
            {
               §?E§.init(§`7§.§>"?§.Views.View_LevelSelection[0]);
               while(true)
               {
                  this.§3""§ = §?E§.getItemByName("Container_LevelRepeaters") as §`!T§;
                  while(!(_loc1_ && this))
                  {
                     this.§`R§ = §?E§.getItemByName("Container_LevelSelection") as §`!T§;
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§=!X§.§!'§);
               while(true)
               {
                  §§pop().clearLevel();
                  loop2:
                  while(true)
                  {
                     §§push(§=!X§.§!'§);
                     if(_loc1_)
                     {
                        break;
                     }
                     §§pop().§;p§(false);
                     while(true)
                     {
                        this.§@Z§();
                        loop4:
                        for(; !_loc1_; if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        },if(!_loc2_)
                        {
                           continue loop0;
                        },§?E§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§[%§),§§goto(addr53))
                        {
                           this.§<!,§();
                           loop5:
                           while(true)
                           {
                              if(this.§"!v§.length != 1)
                              {
                                 (§?E§.getItemByName("Button_Prev") as §="#§).setVisibility(true);
                                 while(_loc2_ || _loc2_)
                                 {
                                    (§?E§.getItemByName("Button_Next") as §="#§).setVisibility(true);
                                    loop7:
                                    while(_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          while(true)
                                          {
                                             (§?E§.getItemByName("TextField_LevelNumberSmall") as §`!<§).setVisibility(true);
                                             loop15:
                                             while(true)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   this.§"=§ = this.§3""§.x;
                                                   while(§?E§.stage)
                                                   {
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         continue loop7;
                                                      }
                                                      addr53:
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            addr62:
                                                            if(!(_loc1_ && _loc1_))
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr164:
                                                                  while(true)
                                                                  {
                                                                     (§?E§.getItemByName("Button_Next") as §="#§).setVisibility(false);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  (§?E§.getItemByName("TextField_LevelNumberSmall") as §`!<§).setVisibility(false);
                                                               }
                                                            }
                                                            while(_loc2_)
                                                            {
                                                               continue loop11;
                                                               §§goto(addr62);
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop15;
                                                      }
                                                   }
                                                   return;
                                                }
                                             }
                                          }
                                          addr112:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             (§?E§.getItemByName("Button_Prev") as §="#§).setVisibility(false);
                                          }
                                          addr157:
                                       }
                                       §§goto(addr164);
                                    }
                                 }
                                 continue loop2;
                              }
                              §§goto(addr157);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      protected function §<!,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            AngryBirdsFP11.§<!,§();
         }
      }
      
      protected function §[%§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§"!v§.length > 1)
            {
               while(param1.keyCode != Keyboard.LEFT)
               {
                  if(param1.keyCode == Keyboard.RIGHT)
                  {
                     if(!(_loc3_ && this))
                     {
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc3_ && this)
                           {
                              break;
                           }
                           this.§-0§();
                           addr69:
                           if(_loc2_ || _loc3_)
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr24);
                              }
                              else
                              {
                                 addr103:
                              }
                              return;
                           }
                           continue;
                        }
                        addr24:
                        return;
                        addr97:
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr24);
               }
               this.§!!k§();
               addr85:
               §§goto(addr97);
            }
            §§goto(addr103);
         }
         §§goto(addr85);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && this))
            {
               if(§§pop() == §5y§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     this.§'!h§();
                     loop1:
                     while(true)
                     {
                        this.§3!]§();
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              if(_loc4_ || this)
                              {
                                 if(mNextState.length <= 0)
                                 {
                                    break;
                                 }
                                 if(!_loc3_)
                                 {
                                    return §5y§.STATE_STATUS_COMPLETED;
                                 }
                                 if(_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    addr101:
                                    return _loc2_;
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                        return §5y§.STATE_STATUS_RUNNING;
                     }
                  }
               }
            }
         }
         §§goto(addr101);
      }
      
      protected function §'!h§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(this.§+[§);
               if(_loc4_ || this)
               {
                  if(§§pop() >= §§pop().length)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§7!+§);
                        addr216:
                        loop35:
                        while(_loc4_)
                        {
                           if(_loc4_ || this)
                           {
                              §§push(this.§?!Y§);
                              loop36:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    loop37:
                                    while(true)
                                    {
                                       §§push(this.§?!Y§);
                                       loop38:
                                       while(!_loc3_)
                                       {
                                          §§push(this.§7!+§);
                                          while(§§pop() <= §§pop())
                                          {
                                             §§push(this.§?!Y§);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                if(_loc3_ && _loc3_)
                                                {
                                                   break loop37;
                                                }
                                                §§push(this.§7!+§);
                                                if(!_loc3_)
                                                {
                                                   continue loop36;
                                                }
                                                continue;
                                             }
                                             continue loop38;
                                          }
                                          loop47:
                                          while(true)
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      this.§8W§ = this.§7!+§ + 1;
                                                      loop46:
                                                      while(!_loc3_)
                                                      {
                                                         loop41:
                                                         while(true)
                                                         {
                                                            §§push(this.§`"4§);
                                                            if(_loc4_)
                                                            {
                                                               §§push(this.§8W§);
                                                               if(_loc4_ || _loc1_)
                                                               {
                                                                  if(!(_loc3_ && _loc1_))
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(§§pop()[§§pop()])
                                                                        {
                                                                           loop42:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_ || _loc1_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop37;
                                                                                 }
                                                                                 if(!(_loc3_ && _loc1_))
                                                                                 {
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       this.§?!+§.§`<§(this.§`"4§[this.§8W§].red,this.§`"4§[this.§8W§].green,this.§`"4§[this.§8W§].blue);
                                                                                       loop43:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(!(_loc3_ && this))
                                                                                                {
                                                                                                   addr26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§"=§ = this.§3""§.x;
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         continue loop43;
                                                                                                      }
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         continue loop42;
                                                                                                      }
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         if(!(_loc4_ || _loc2_))
                                                                                                         {
                                                                                                            continue loop46;
                                                                                                         }
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(_loc4_ || _loc3_)
                                                                                                               {
                                                                                                                  return;
                                                                                                               }
                                                                                                               addr519:
                                                                                                               _loc2_++;
                                                                                                               loop32:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  loop17:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     addr502:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§+[§);
                                                                                                                        addr504:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() >= §§pop().length)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§7!+§ = _loc1_;
                                                                                                                                 addr509:
                                                                                                                                 addr546:
                                                                                                                                 loop21:
                                                                                                                                 while(!(_loc3_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(this.§+[§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc3_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(_loc1_);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                             addr497:
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             (§?E§.getItemByName("TextField_LevelNumberSmall") as §`!<§).x = this.§+[§[_loc1_].x;
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§^>§(_loc1_);
                                                                                                                                                addr469:
                                                                                                                                                addr551:
                                                                                                                                                loop25:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§3""§);
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§push(-§§pop().x);
                                                                                                                                                   loop26:
                                                                                                                                                   for(; !_loc3_; if(!(_loc4_ || _loc1_))
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   },§§goto(addr380),§§push(-§§pop()))
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§"!v§);
                                                                                                                                                         loop27:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                            loop28:
                                                                                                                                                            while(_loc4_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 §§push(this.§"=§);
                                                                                                                                                                                 if(!(_loc3_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop26;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr380:
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§"!v§);
                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc3_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc1_);
                                                                                                                                                                                             if(!(_loc4_ || _loc1_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop28;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr262:
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr412:
                                                                                                                                                                                                      break loop35;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   _loc1_++;
                                                                                                                                                                                                   if(!(_loc4_ || this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§^>§(_loc1_);
                                                                                                                                                                                                         break loop42;
                                                                                                                                                                                                         §§goto(addr262);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr299:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop0;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc1_);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr565:
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() >= §§pop()[§§pop()].x);
                                                                                                                                                                                             addr569:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                addr570:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         addr572:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§"=§);
                                                                                                                                                                                                            addr533:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                               break loop26;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr571:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr542:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop46;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop25;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop27;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr553:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr565);
                                                                                                                                                                                 addr464:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr569);
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc1_);
                                                                                                                                                                              break loop28;
                                                                                                                                                                           }
                                                                                                                                                                           addr461:
                                                                                                                                                                           addr536:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr262);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr570);
                                                                                                                                                                  }
                                                                                                                                                                  while(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr542);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr571);
                                                                                                                                                                  addr540:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr461);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr540);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr533);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr536);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr553);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop21;
                                                                                                                                          addr494:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr526:
                                                                                                                                       }
                                                                                                                                       addr525:
                                                                                                                                       §§pop()[_loc2_].gotoAndStop("UnSelected");
                                                                                                                                       §§goto(addr529);
                                                                                                                                    }
                                                                                                                                    continue loop32;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop17;
                                                                                                                                    §§goto(addr509);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr506:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(this.§+[§);
                                                                                                                           }
                                                                                                                           §§goto(addr525);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr529:
                                                                                                            }
                                                                                                            §§goto(addr412);
                                                                                                         }
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            _loc2_++;
                                                                                                            break loop43;
                                                                                                         }
                                                                                                         §§goto(addr482);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc3_ && _loc1_))
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  continue loop41;
                                                                                                               }
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            continue loop47;
                                                                                                         }
                                                                                                         §§goto(addr262);
                                                                                                         addr189:
                                                                                                      }
                                                                                                      §§goto(addr262);
                                                                                                   }
                                                                                                   addr26:
                                                                                                }
                                                                                                §§goto(addr464);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          addr145:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop41;
                                                                                          }
                                                                                       }
                                                                                       addr319:
                                                                                       §§push(_loc2_);
                                                                                       break loop38;
                                                                                    }
                                                                                    §§goto(addr469);
                                                                                 }
                                                                                 this.§7!+§ = _loc1_;
                                                                                 while(!(_loc3_ && this))
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(this.§+[§);
                                                                                       break loop41;
                                                                                    }
                                                                                    §§goto(addr519);
                                                                                 }
                                                                                 while(!(_loc4_ || _loc2_))
                                                                                 {
                                                                                    §§goto(addr506);
                                                                                 }
                                                                                 §§goto(addr319);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_ && _loc2_)
                                                                                    {
                                                                                       break loop42;
                                                                                    }
                                                                                    this.§8W§ = this.§7!+§ - 1;
                                                                                 }
                                                                                 addr177:
                                                                              }
                                                                              §§goto(addr189);
                                                                           }
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr262);
                                                                           }
                                                                           §§goto(addr572);
                                                                        }
                                                                        §§goto(addr26);
                                                                     }
                                                                     §§goto(addr526);
                                                                  }
                                                                  addr356:
                                                                  §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                  §§goto(addr359);
                                                               }
                                                               addr311:
                                                               if(_loc4_)
                                                               {
                                                                  §§pop()[§§pop()].gotoAndStop("Selected");
                                                                  addr316:
                                                                  if(!_loc3_)
                                                                  {
                                                                     (§?E§.getItemByName("TextField_LevelNumberSmall") as §`!<§).x = this.§+[§[_loc1_].x;
                                                                     §§goto(addr299);
                                                                  }
                                                                  §§goto(addr335);
                                                               }
                                                               §§goto(addr494);
                                                            }
                                                            break;
                                                         }
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§goto(addr311);
                                                            §§push(_loc1_);
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr356);
                                                            §§push(_loc2_);
                                                         }
                                                         §§goto(addr486);
                                                      }
                                                      addr545:
                                                      _loc2_ = 0;
                                                      §§goto(addr546);
                                                   }
                                                   §§goto(addr497);
                                                }
                                                §§goto(addr316);
                                             }
                                             §§goto(addr262);
                                          }
                                       }
                                       addr321:
                                       addr323:
                                       §§push(this.§+[§);
                                       while(true)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(§§pop() >= §§pop().length)
                                             {
                                                §§goto(addr332);
                                             }
                                             else
                                             {
                                                §§push(this.§+[§);
                                             }
                                             §§goto(addr353);
                                          }
                                          §§goto(addr504);
                                          §§goto(addr321);
                                       }
                                    }
                                    continue loop35;
                                 }
                                 §§goto(addr26);
                              }
                           }
                           §§goto(addr545);
                        }
                        while(true)
                        {
                           if(!(_loc3_ && this))
                           {
                              _loc2_ = §§pop();
                              §§goto(addr421);
                           }
                           §§goto(addr502);
                        }
                     }
                  }
                  else
                  {
                     §§push(this.§3""§);
                  }
                  §§goto(addr551);
               }
               §§goto(addr323);
            }
            §§goto(addr216);
         }
      }
      
      protected function §3!]§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               if(§§pop() >= this.§"!v§.length)
               {
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(Number(Math.abs(_loc2_)));
                           loop2:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    break;
                                 }
                                 if(§§pop() <= 1000)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(Math.abs(this.§"!v§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                                       {
                                          addr170:
                                          if(!_loc4_)
                                          {
                                             addr152:
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(this.§"!v§);
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   addr162:
                                                   while(true)
                                                   {
                                                      §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                                   }
                                                }
                                                addr161:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(1000);
                                                   addr185:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      continue loop2;
                                                   }
                                                   §§goto(addr152);
                                                }
                                                addr184:
                                             }
                                          }
                                          while(true)
                                          {
                                          }
                                          addr170:
                                       }
                                       while(true)
                                       {
                                          §§push(this.§"!v§);
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(_loc1_);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   if(§§pop()[§§pop()].mClip.alpha < 1)
                                                   {
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         addr124:
                                                         §§push(this.§"!v§);
                                                         §§push(_loc1_);
                                                         break;
                                                      }
                                                      loop11:
                                                      while(!_loc4_)
                                                      {
                                                         while(true)
                                                         {
                                                            _loc1_++;
                                                            addr40:
                                                            while(!_loc3_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      §§goto(addr170);
                                                      addr130:
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§"!v§);
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc1_);
                                                         if(_loc4_ && _loc3_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            (§§pop()[§§pop()] as §-!2§).setEnabled(true);
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               if(!(_loc3_ || _loc2_))
                                                               {
                                                                  continue loop3;
                                                               }
                                                               §§goto(addr38);
                                                            }
                                                            addr77:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr162);
                                                         }
                                                         §§goto(addr170);
                                                      }
                                                   }
                                                   §§goto(addr124);
                                                }
                                                break;
                                             }
                                             §§goto(addr161);
                                             §§goto(addr162);
                                          }
                                          (§§pop()[§§pop()] as §-!2§).setEnabled(false);
                                          §§goto(addr130);
                                       }
                                    }
                                 }
                                 §§goto(addr184);
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr40);
               }
               else
               {
                  §§push(Number(this.§3""§.x + this.§"!v§[_loc1_].x));
               }
               §§goto(addr224);
            }
            §§goto(addr185);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(§?E§.stage)
            {
               while(true)
               {
                  §?E§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§[%§);
                  addr101:
                  while(true)
                  {
                  }
               }
               addr94:
            }
            loop1:
            while(true)
            {
               super.deActivate();
               loop2:
               while(true)
               {
                  this.§[Q§();
                  while(_loc1_)
                  {
                     (§?E§.getItemByName("Button_Back") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     for(; _loc1_ || _loc1_; §3!w§.§8H§ = null,if(!(_loc2_ && this))
                     {
                        if(_loc1_)
                        {
                           break loop2;
                        }
                        continue loop2;
                     })
                     {
                        if(!_loc2_)
                        {
                           continue;
                        }
                        §§goto(addr94);
                     }
                  }
                  continue loop1;
               }
               return;
            }
         }
         §§goto(addr101);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§4i§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§push(this.§4i§);
                     addr86:
                     while(true)
                     {
                        §§pop().stop();
                        loop3:
                        while(true)
                        {
                           this.§4i§ = null;
                           addr54:
                           addr63:
                           while(true)
                           {
                              if(!(_loc1_ && this))
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  addr84:
               }
               while(true)
               {
                  super.cleanup();
                  if(_loc2_ || _loc2_)
                  {
                     break;
                  }
                  §§goto(addr54);
                  §§goto(addr63);
               }
               return;
            }
            §§goto(addr86);
         }
         §§goto(addr84);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            §§push(param2.length > 0);
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
                        loop3:
                        while(true)
                        {
                           §§push(param3 is §-!"§);
                           loop4:
                           while(_loc5_ || param3)
                           {
                              addr112:
                              if(_loc6_ && this)
                              {
                                 continue;
                              }
                              loop13:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       §§push(this.§[!@§);
                                       addr123:
                                       loop11:
                                       for(; !(_loc6_ && this); continue loop14)
                                       {
                                          if(!§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   while(_loc5_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push((param3 as §-!"§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                                                      }
                                                   }
                                                   continue loop3;
                                                   addr172:
                                                }
                                                §3!w§.loadLevel(§3!w§.§'f§(param2.toLowerCase()));
                                                while(_loc5_ || param3)
                                                {
                                                   mNextState = StateCutScene.§'=§;
                                                   if(_loc6_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   var _loc4_:* = param2;
                                                   if(!_loc6_)
                                                   {
                                                      if("BACK" === _loc4_)
                                                      {
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §§push(0);
                                                            if(_loc6_)
                                                            {
                                                               addr241:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr245:
                                                            §§push(3);
                                                            if(_loc5_ || param3)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr268);
                                                      }
                                                      if("NEXT" === _loc4_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§push(1);
                                                            if(!_loc5_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr245);
                                                         }
                                                         §§goto(addr268);
                                                      }
                                                      else
                                                      {
                                                         if("PREV" !== _loc4_)
                                                         {
                                                            if("FULLSCREEN_BUTTON" === _loc4_)
                                                            {
                                                               §§goto(addr245);
                                                            }
                                                            else
                                                            {
                                                               §§push(4);
                                                            }
                                                            addr268:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  §5!U§.playSound("Menu_Back");
                                                                  if(!_loc6_)
                                                                  {
                                                                     mNextState = §="§.§'=§;
                                                                     break;
                                                                     addr79:
                                                                  }
                                                                  break;
                                                               case 1:
                                                                  this.§-0§();
                                                                  break;
                                                                  addr73:
                                                               case 2:
                                                                  this.§!!k§();
                                                                  addr60:
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     addr34:
                                                                     break;
                                                                  }
                                                                  §§goto(addr73);
                                                                  break;
                                                               case 3:
                                                                  §5!U§.playSound("Menu_Confirm");
                                                                  addr40:
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     if(_loc5_ || param2)
                                                                     {
                                                                        AngryBirdsFP11.§%d§.§9+§();
                                                                        if(_loc5_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              §§goto(addr40);
                                                                           }
                                                                           if(true)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr34);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr79);
                                                                  }
                                                                  §§goto(addr60);
                                                            }
                                                            return;
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            §§push(2);
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr241);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr245);
                                                         }
                                                         §§goto(addr268);
                                                      }
                                                   }
                                                   §§goto(addr245);
                                                   addr80:
                                                }
                                                while(true)
                                                {
                                                   §§push((param3 as §-!"§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                                                   if(_loc6_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr112);
                                                   }
                                                }
                                                continue loop4;
                                                addr151:
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc5_ || param3))
                                                      {
                                                         break;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         break loop11;
                                                      }
                                                      continue loop13;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr151);
                                          }
                                          §§goto(addr80);
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          §§goto(addr194);
                                          §§goto(addr123);
                                       }
                                    }
                                 }
                                 §§goto(addr80);
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(§§pop())
                  {
                     §§goto(addr172);
                  }
                  §§goto(addr80);
               }
            }
         }
         §§goto(addr174);
      }
      
      protected function §-0§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §5!U§.playSound("Menu_Confirm");
            if(_loc3_ || this)
            {
               if(!this.§[!@§)
               {
                  if(!_loc4_)
                  {
                     addr48:
                     var _loc1_:*;
                     §§push((_loc1_ = this).§?!Y§);
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc3_ || _loc1_)
                     {
                        _loc1_.§?!Y§ = _loc2_;
                     }
                     if(!_loc4_)
                     {
                        addr85:
                        this.§[!A§(this.§?!Y§);
                     }
                  }
                  §§goto(addr85);
               }
               return;
            }
            §§goto(addr48);
         }
         §§goto(addr85);
      }
      
      protected function §!!k§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc1_))
         {
            §5!U§.playSound("Menu_Confirm");
            if(_loc4_ || this)
            {
               if(!this.§[!@§)
               {
                  if(_loc4_ || this)
                  {
                     addr54:
                     var _loc1_:*;
                     §§push((_loc1_ = this).§?!Y§);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc4_ || _loc2_)
                     {
                        _loc1_.§?!Y§ = _loc2_;
                     }
                     if(_loc3_)
                     {
                     }
                     §§goto(addr95);
                  }
                  this.§[!A§(this.§?!Y§);
               }
            }
            addr95:
            return;
         }
         §§goto(addr54);
      }
      
      public function §@Z§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:Number = 0;
         if(_loc9_)
         {
            this.§`"4§ = [];
            while(true)
            {
               this.§+!6§ = [];
            }
            addr75:
         }
         loop1:
         while(true)
         {
            this.§?!Y§ = §3!w§.§2I§(§3!w§.§&"&§).§@!M§;
            while(true)
            {
               loop3:
               while(true)
               {
                  this.§8W§ = this.§?!Y§;
                  while(!_loc10_)
                  {
                     if(!_loc10_)
                     {
                        this.§7!+§ = this.§?!Y§;
                        if(!_loc9_)
                        {
                           continue;
                        }
                        if(!_loc9_)
                        {
                           break loop3;
                        }
                        if(false)
                        {
                           continue loop3;
                        }
                        var _loc2_:§"! § = §3!w§.§2I§(§3!w§.§&"&§);
                        var _loc3_:* = Number(0);
                        addr171:
                        if(_loc3_ < _loc2_.pageIndexes.length)
                        {
                           _loc4_ = _loc2_.§"b§(_loc2_.pageIndexes[_loc3_]);
                           if(_loc9_ || _loc1_)
                           {
                              addr166:
                              this.§`"4§.push(_loc2_.§!";§(_loc3_));
                              addr170:
                              §§push(this.§+!6§);
                              if(_loc9_ || _loc3_)
                              {
                                 §§pop().push(_loc2_.§^"1§(_loc3_));
                                 addr138:
                                 _loc1_ = this.§>?§(_loc4_,_loc3_,_loc1_,_loc2_);
                                 addr130:
                                 addr137:
                                 if(!_loc10_)
                                 {
                                    if(!(_loc10_ && this))
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          §§push(§§pop() + 1);
                                          if(!_loc10_)
                                          {
                                             if(!(_loc10_ && this))
                                             {
                                                addr123:
                                                §§push(Number(§§pop()));
                                                if(!_loc10_)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc9_)
                                                   {
                                                      addr128:
                                                      if(false)
                                                      {
                                                         §§goto(addr130);
                                                      }
                                                      §§goto(addr171);
                                                   }
                                                   §§goto(addr130);
                                                }
                                                §§goto(addr138);
                                             }
                                             §§goto(addr137);
                                          }
                                       }
                                       §§goto(addr123);
                                    }
                                    §§goto(addr170);
                                 }
                                 addr163:
                                 §§goto(addr163);
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr128);
                        }
                        if(_loc9_)
                        {
                           this.§?!+§ = new §4!i§(this.§`"4§[this.§?!Y§].red,this.§`"4§[this.§?!Y§].green,this.§`"4§[this.§?!Y§].blue,1);
                           if(_loc9_ || _loc2_)
                           {
                              addr218:
                              §?E§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§?!+§);
                              if(!(_loc10_ && _loc1_))
                              {
                                 if(_loc2_.§#!"§)
                                 {
                                    if(!_loc10_)
                                    {
                                       addr236:
                                       _loc6_ = new (_loc5_ = §>!]§.§1!8§(_loc2_.§#!"§))();
                                       if(!_loc10_)
                                       {
                                          §?E§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                                          if(_loc9_)
                                          {
                                             addr262:
                                             if(_loc2_.§`%§)
                                             {
                                                if(_loc9_ || this)
                                                {
                                                }
                                                addr303:
                                                this.§5"&§();
                                                if(!(_loc10_ && _loc1_))
                                                {
                                                   if(§[""§ != StateCutScene.§'=§)
                                                   {
                                                      this.§[!A§(this.§?!Y§,true);
                                                      if(_loc10_)
                                                      {
                                                         addr333:
                                                         if(!_loc10_)
                                                         {
                                                            if(!(_loc9_ || this))
                                                            {
                                                               addr357:
                                                               §[""§ = "";
                                                               this.§[!A§(this.§7!+§);
                                                               §§goto(addr333);
                                                               addr360:
                                                            }
                                                            addr313:
                                                            return;
                                                            addr352:
                                                         }
                                                         §§goto(addr360);
                                                      }
                                                      else
                                                      {
                                                         addr327:
                                                      }
                                                      §§goto(addr313);
                                                   }
                                                   §§goto(addr357);
                                                   addr312:
                                                }
                                                §§goto(addr352);
                                             }
                                             else
                                             {
                                                §?E§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                                                §§goto(addr303);
                                             }
                                          }
                                          _loc8_ = new (_loc7_ = §>!]§.§1!8§(_loc2_.§`%§))();
                                          if(!_loc10_)
                                          {
                                             §?E§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                                             if(!(_loc10_ && _loc2_))
                                             {
                                                §§goto(addr303);
                                             }
                                             §§goto(addr312);
                                          }
                                          §§goto(addr327);
                                       }
                                       §§goto(addr303);
                                    }
                                 }
                                 else
                                 {
                                    §?E§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                                 }
                              }
                              §§goto(addr262);
                           }
                           §§goto(addr236);
                        }
                        §§goto(addr218);
                     }
                     else
                     {
                        §§goto(addr75);
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      protected function §>?§(param1:Array, param2:int, param3:Number, param4:§"! §) : Number
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:* = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §>!]§.§1!8§(this.§+!6§[param2]);
         var _loc7_:* = Number(0);
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(!(_loc14_ && param1))
            {
               §§push(AngryBirdsFP11.§>" §.§>1§(_loc10_));
               if(!_loc14_)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(_loc14_)
               {
                  break;
               }
               _loc12_ = this.§6G§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
               (_loc13_ = <Button/>).@name = _loc10_;
               if(!_loc14_)
               {
                  §§push(_loc11_);
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc15_ || param3)
                                 {
                                    _loc13_.@MouseUp = _loc10_;
                                 }
                                 while(true)
                                 {
                                    addr138:
                                    if(_loc14_ && this)
                                    {
                                       continue;
                                    }
                                    _loc12_.MovieClip_Stars.mouseEnabled = false;
                                    loop9:
                                    while(_loc15_ || this)
                                    {
                                       do
                                       {
                                          _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             if(!_loc14_)
                                             {
                                                §§push(§§pop() + 1);
                                                if(!_loc14_)
                                                {
                                                   addr102:
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc7_ = §§pop();
                                                if(_loc15_ || param3)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             §§goto(addr102);
                                          }
                                          if(!_loc15_)
                                          {
                                             continue loop9;
                                          }
                                          if(_loc15_)
                                          {
                                             continue;
                                          }
                                          addr174:
                                          while(true)
                                          {
                                             _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                             break loop9;
                                          }
                                       }
                                       while(false);
                                       
                                       continue loop0;
                                    }
                                    loop8:
                                    for(; _loc15_; §§goto(addr149))
                                    {
                                       §§push(_loc11_);
                                       if(!(_loc14_ && this))
                                       {
                                          if(!_loc14_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc14_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr138);
                                             }
                                             else
                                             {
                                                §§goto(addr117);
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(!_loc14_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop2;
                                             }
                                             addr178:
                                          }
                                       }
                                       else
                                       {
                                          addr212:
                                          while(!(_loc14_ && this))
                                          {
                                             continue loop4;
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             break loop8;
                                          }
                                          addr212:
                                          addr188:
                                       }
                                    }
                                    addr149:
                                    while(true)
                                    {
                                       §§goto(addr178);
                                       §§goto(addr212);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 _loc13_.@scaleOnMouseOver = "True";
                                 §§goto(addr174);
                              }
                           }
                        }
                        §§goto(addr212);
                     }
                  }
               }
               §§goto(addr223);
            }
            break;
         }
         _loc8_ = <Repeater/>;
         if(_loc15_)
         {
            §§push(param1);
            loop15:
            while(true)
            {
               §§push(§§pop().length == 15);
               if(_loc15_ || param3)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           _loc8_.@name = "Repeater_LevelSelection";
                           loop26:
                           while(true)
                           {
                              loop19:
                              while(true)
                              {
                                 _loc8_.@button = this.§+!6§[param2];
                                 loop20:
                                 while(true)
                                 {
                                    _loc8_.@enabled = "True";
                                    loop21:
                                    for(; _loc15_ || param2; if(!(_loc15_ || param2))
                                    {
                                       continue;
                                    },if(_loc14_ && this)
                                    {
                                       continue loop26;
                                    },if(!(_loc15_ || param2))
                                    {
                                       continue loop15;
                                    },if(false)
                                    {
                                       §§goto(addr265);
                                    },var _loc9_:§+!,§,(_loc9_ = new §+!,§(_loc8_,this.§3""§,null,null)).§[!5§(_loc5_),if(!(_loc14_ && param2))
                                    {
                                       _loc9_.setVisibility(true);
                                       _loc9_.x += param3;
                                       addr430:
                                       if(_loc15_ || param1)
                                       {
                                          this.§3""§.§;!R§(_loc9_);
                                          addr415:
                                          if(_loc15_ || param1)
                                          {
                                             this.§"!v§.push(_loc9_);
                                             addr393:
                                             param3 += AngryBirdsFP11.§>!U§;
                                             addr389:
                                             if(!_loc14_)
                                             {
                                                if(!(_loc14_ && this))
                                                {
                                                   §§push(param3);
                                                   if(_loc15_)
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         if(!(_loc15_ || this))
                                                         {
                                                            §§goto(addr389);
                                                         }
                                                         return §§pop();
                                                      }
                                                      §§goto(addr389);
                                                   }
                                                   §§goto(addr393);
                                                   addr403:
                                                }
                                                §§goto(addr415);
                                             }
                                             addr409:
                                             §§goto(addr409);
                                          }
                                          §§goto(addr430);
                                       }
                                       addr451:
                                       §§goto(addr451);
                                    },§§goto(addr403))
                                    {
                                       while(true)
                                       {
                                          _loc8_.@buttonSelectionType = "NO_SELECTION";
                                          while(_loc15_ || param1)
                                          {
                                             if(!(_loc14_ && param1))
                                             {
                                                _loc8_.@fromLibrary = "true";
                                                if(_loc15_)
                                                {
                                                   continue loop21;
                                                }
                                                continue;
                                             }
                                             addr335:
                                             while(true)
                                             {
                                                continue loop19;
                                             }
                                          }
                                          continue loop20;
                                       }
                                    }
                                 }
                              }
                           }
                           addr310:
                        }
                        while(true)
                        {
                           _loc8_.@name = "Repeater_LevelSelection15";
                           §§goto(addr335);
                        }
                        addr320:
                        §§push(§§pop().length == 10);
                        if(_loc15_ || param2)
                        {
                           continue;
                        }
                        addr349:
                        while(true)
                        {
                           §§pop();
                           continue loop15;
                           §§goto(addr320);
                        }
                        addr349:
                     }
                  }
               }
               §§goto(addr349);
            }
         }
         §§goto(addr310);
      }
      
      protected function §6G§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(_loc9_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  _loc6_.gotoAndStop("Locked");
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        _loc6_.isOpen = param2;
                        addr118:
                        while(_loc9_ || this)
                        {
                           continue loop0;
                        }
                        addr190:
                        while(true)
                        {
                           _loc6_.MovieClip_MEInUse.visible = false;
                           loop13:
                           while(true)
                           {
                              §§push(AngryBirdsFP11.§>" §);
                              addr158:
                              loop8:
                              while(true)
                              {
                                 §§push(param1);
                                 addr159:
                                 while(true)
                                 {
                                    §§push(§§pop().§2?§(§§pop()));
                                    addr160:
                                    while(true)
                                    {
                                       if(§§pop() != 100)
                                       {
                                          break loop8;
                                       }
                                       while(true)
                                       {
                                          if(!_loc9_)
                                          {
                                             continue loop13;
                                          }
                                          _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                                          loop7:
                                          while(true)
                                          {
                                             _loc6_.MovieClip_Feather.mouseEnabled = false;
                                             addr152:
                                             while(_loc8_)
                                             {
                                                continue loop7;
                                             }
                                             addr126:
                                             continue loop2;
                                          }
                                       }
                                    }
                                    continue loop8;
                                 }
                              }
                              _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                              addr146:
                              _loc6_.MovieClip_Feather.mouseEnabled = false;
                              §§goto(addr126);
                           }
                        }
                     }
                  }
                  addr132:
               }
               while(true)
               {
                  _loc6_.gotoAndStop("Open");
                  §§goto(addr190);
               }
            }
         }
         §§goto(addr113);
      }
      
      protected function §5"&§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(!_loc6_)
         {
            if(this.§"!v§.length == 1)
            {
               if(_loc5_)
               {
                  §§goto(addr31);
               }
            }
            var _loc3_:* = Number(0);
            if(_loc5_ || _loc2_)
            {
               this.§9!,§ = new Dictionary();
            }
            var _loc4_:int = 0;
            loop0:
            while(_loc4_ < this.§"!v§.length)
            {
               _loc1_ = §>!]§.§1!8§("Button_Dot");
               _loc2_ = new _loc1_();
               if(!_loc6_)
               {
                  _loc2_.x = AngryBirdsFP11.§>!U§ / 2 + _loc3_ - this.§"!v§.length * _loc2_.width / 2;
                  loop1:
                  while(true)
                  {
                     _loc2_.y = (§?E§.getItemByName("Button_Next") as §="#§).y - _loc2_.height / 2;
                     loop2:
                     while(true)
                     {
                        if(_loc4_ != this.§?!Y§)
                        {
                           _loc2_.gotoAndStop("UnSelected");
                           loop3:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    this.§`R§.mClip.addChild(_loc2_);
                                    while(true)
                                    {
                                       this.§9!,§[_loc2_] = _loc4_;
                                       loop6:
                                       while(true)
                                       {
                                          this.§+[§.push(_loc2_);
                                          loop7:
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop3;
                                             }
                                             if(!(_loc5_ || _loc3_))
                                             {
                                                break;
                                             }
                                             §§push(_loc3_);
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§push(Number(§§pop() + _loc2_.width));
                                             }
                                             _loc3_ = §§pop();
                                             loop8:
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(_loc6_ && _loc1_)
                                                   {
                                                      break;
                                                   }
                                                   _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§%"6§);
                                                   loop9:
                                                   while(_loc5_)
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         do
                                                         {
                                                            _loc2_.buttonMode = true;
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               continue loop9;
                                                            }
                                                            continue loop6;
                                                         }
                                                         while(false);
                                                         
                                                         continue loop0;
                                                      }
                                                      addr200:
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(_loc5_ || _loc1_)
                                                         {
                                                            (§?E§.getItemByName("TextField_LevelNumberSmall") as §`!<§).y = _loc2_.y - _loc2_.height;
                                                            break loop8;
                                                         }
                                                         addr213:
                                                         while(!_loc6_)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc2_.gotoAndStop("Selected");
                                                               break loop7;
                                                            }
                                                            continue loop16;
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   continue;
                                                }
                                                continue loop7;
                                             }
                                             while(true)
                                             {
                                                this.§^>§(_loc4_);
                                                continue loop4;
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 addr147:
                              }
                              while(true)
                              {
                                 §§goto(addr147);
                              }
                           }
                        }
                        §§goto(addr213);
                     }
                  }
               }
               §§goto(addr215);
            }
            if(_loc5_)
            {
               §§push(this.§"!v§.length * _loc2_.width);
               if(_loc5_)
               {
                  §§push(§§pop() / 2);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(§§pop() + _loc2_.width * 1.5);
                     if(_loc5_ || this)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               _loc3_ = §§pop();
               if(!(_loc6_ && _loc1_))
               {
                  (§?E§.getItemByName("Button_Next") as §="#§).x = AngryBirdsFP11.§>!U§ / 2;
                  loop21:
                  while(true)
                  {
                     (§?E§.getItemByName("Button_Prev") as §="#§).x = AngryBirdsFP11.§>!U§ / 2;
                     addr370:
                     addr372:
                     addr351:
                     while(_loc6_)
                     {
                        continue loop21;
                     }
                     (§?E§.getItemByName("Button_Next") as §="#§).x = (§?E§.getItemByName("Button_Next") as §="#§).x + (_loc3_ + 10);
                     while(!(_loc5_ || this))
                     {
                        §§goto(addr370);
                        §§goto(addr372);
                     }
                  }
                  addr393:
               }
               while(true)
               {
                  (§?E§.getItemByName("Button_Prev") as §="#§).x = (§?E§.getItemByName("Button_Prev") as §="#§).x - (_loc3_ + 10);
                  if(!(_loc6_ && _loc1_))
                  {
                     break;
                  }
                  §§goto(addr351);
               }
               return;
            }
            §§goto(addr393);
         }
         addr31:
      }
      
      protected function §[Q§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§?!+§);
            if(_loc3_ || this)
            {
               if(!§§pop())
               {
               }
               §§goto(addr39);
            }
            §§pop().clean();
         }
         addr39:
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§?!+§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            if(_loc1_ >= this.§+[§.length)
            {
               if(_loc3_)
               {
                  this.§+[§ = [];
               }
               loop1:
               for(; !_loc2_; if(!(_loc3_ || _loc2_))
               {
                  continue;
               },if(_loc3_ || _loc1_)
               {
                  break loop0;
               },§§goto(addr124))
               {
                  if(_loc3_ || _loc3_)
                  {
                     while(true)
                     {
                        §§push(this.§3""§);
                        if(!_loc2_)
                        {
                           if(§§pop().mClip.numChildren <= 0)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              if(!(_loc2_ && _loc1_))
                              {
                                 this.§"!v§ = [];
                                 break;
                              }
                              continue;
                           }
                           §§push(this.§3""§);
                        }
                        §§pop().mClip.removeChildAt(0);
                     }
                     continue;
                  }
                  loop5:
                  while(true)
                  {
                     this.§+[§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§%"6§);
                     addr174:
                     addr122:
                     loop4:
                     while(true)
                     {
                        §§push(this.§`R§);
                        if(_loc3_ || _loc2_)
                        {
                           §§pop().mClip.removeChild(this.§+[§[_loc1_]);
                           break loop1;
                        }
                        addr148:
                        while(true)
                        {
                           if(!§§pop().mClip.contains(this.§+[§[_loc1_]))
                           {
                              break loop4;
                           }
                           continue loop5;
                        }
                     }
                     loop7:
                     while(true)
                     {
                        _loc1_++;
                        addr124:
                        while(!_loc3_)
                        {
                           §§goto(addr174);
                           continue loop7;
                        }
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr122);
               }
            }
            else
            {
               §§push(this.§`R§);
            }
            §§goto(addr148);
         }
      }
      
      protected function §%"6§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§[!@§)
            {
               if(_loc3_)
               {
                  this.§[!A§(this.§9!,§[param1.target]);
               }
            }
         }
      }
      
      protected function §9,§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!this.§[!@§)
            {
               if(!_loc2_)
               {
                  mNextState = §7B§.§'=§;
               }
            }
         }
      }
      
      protected function §[!A§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            this.§[!@§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc7_)
               {
                  if(§§pop() <= this.§"!v§.length - 1)
                  {
                     §§push(param1);
                     loop1:
                     while(true)
                     {
                        §§push(0);
                        loop2:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§push(0);
                                 while(true)
                                 {
                                    param1 = §§pop();
                                 }
                                 addr125:
                              }
                              while(true)
                              {
                              }
                              addr126:
                           }
                           while(true)
                           {
                              this.§?!Y§ = param1;
                              loop6:
                              while(true)
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§?!Y§);
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc7_)
                                          {
                                             if(_loc7_ || this)
                                             {
                                                §§push(this.§7!+§);
                                                while(true)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!(_loc7_ || param2))
                                                      {
                                                         break loop6;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         this.§8W§ = this.§7!+§ + 1;
                                                         break loop6;
                                                      }
                                                      continue loop6;
                                                   }
                                                   §§push(this.§?!Y§);
                                                   if(_loc7_)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop8;
                                                }
                                                addr161:
                                                §§goto(addr163);
                                                §§push(this.§"!v§);
                                             }
                                             §§goto(addr155);
                                          }
                                          else
                                          {
                                             §§goto(addr125);
                                          }
                                       }
                                       §§goto(addr126);
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr156);
                              }
                              if(_loc6_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr161);
                           }
                        }
                     }
                  }
                  §§goto(addr136);
               }
               §§goto(addr155);
            }
         }
         §§goto(addr103);
      }
      
      protected function §1"9§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() >= this.§+[§.length)
               {
                  if(!_loc2_)
                  {
                     if(_loc3_)
                     {
                        if(_loc3_ || _loc1_)
                        {
                           this.§[!@§ = false;
                           do
                           {
                              §3!w§.§2I§(§3!w§.§&"&§).§@!M§ = this.§?!Y§;
                           }
                           while(_loc2_ && this);
                           
                           if(!_loc2_)
                           {
                              break;
                           }
                           addr155:
                           this.§+[§[_loc1_].gotoAndStop("Selected");
                           addr152:
                           while(true)
                           {
                              (§?E§.getItemByName("TextField_LevelNumberSmall") as §`!<§).x = this.§+[§[_loc1_].x;
                           }
                           addr158:
                           addr64:
                        }
                        while(_loc2_ && _loc2_)
                        {
                           §§goto(addr158);
                        }
                        this.§^>§(_loc1_);
                        while(true)
                        {
                           addr65:
                           loop3:
                           while(true)
                           {
                              _loc1_++;
                              addr110:
                              while(true)
                              {
                                 continue loop3;
                              }
                           }
                           addr69:
                           if(!(_loc2_ && this))
                           {
                              continue loop0;
                           }
                        }
                        addr115:
                     }
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr69);
                        }
                        else
                        {
                           §§goto(addr110);
                        }
                     }
                     continue;
                  }
                  §§goto(addr64);
               }
               else
               {
                  addr139:
                  if(_loc1_ == this.§?!Y§)
                  {
                     §§goto(addr152);
                  }
                  else
                  {
                     §§push(this.§+[§);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || _loc3_)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr110);
                        }
                        else
                        {
                           §§goto(addr155);
                        }
                     }
                     else
                     {
                        §§goto(addr155);
                     }
                     §§goto(addr155);
                  }
               }
               §§goto(addr155);
            }
            §§goto(addr139);
         }
      }
      
      protected function §^>§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§?E§.getItemByName("TextField_LevelNumberSmall") as §`!<§).§&!w§.text = §3!w§.§2I§(§3!w§.§&"&§).pageIndexes[param1];
         }
      }
   }
}
