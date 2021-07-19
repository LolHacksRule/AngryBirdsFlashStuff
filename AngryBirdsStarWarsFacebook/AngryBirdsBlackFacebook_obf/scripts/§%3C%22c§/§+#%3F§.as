package §<"c§
{
   import §+D§.§ #^§;
   import §+D§.§&E§;
   import §+D§.§6!D§;
   import §+D§.§?"o§;
   import §+D§.§^"m§;
   import §3§.§4! §;
   import §3y§.§9r§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§3![§;
   import com.angrybirds.§,!q§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §+#?§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelSelectionState";
      
      protected static const §'!i§:Number = 0.5;
      
      public static var §'"6§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §^!7§ = "LevelSelectionState";
         }
         do
         {
            §'!i§ = 0.5;
            do
            {
               §'"6§ = "";
            }
            while(!(_loc2_ || _loc2_));
            
         }
         while(!_loc2_);
         
      }
      
      protected var §@!U§:Boolean = false;
      
      protected var §-#B§:§ #^§;
      
      protected var §+S§:§ #^§;
      
      protected var §]W§:MovieClip;
      
      protected var §5!7§:Array;
      
      protected var §#"9§:Array;
      
      protected var §?"Y§:int = 0;
      
      protected var §3s§:int = 0;
      
      protected var §#"x§:int = 0;
      
      protected var §!!Q§:Boolean = false;
      
      protected var §>!M§:§[#R§ = null;
      
      protected var §+!V§:Dictionary;
      
      protected var §!"@§:Array;
      
      protected var §;!^§:Array;
      
      protected var §@"r§:§4! §;
      
      protected var §]3§:Number = 0;
      
      public function §+#?§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelSelectionState")
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
         if(!(_loc1_ && _loc1_))
         {
            super.init();
            do
            {
               this.§!#<§();
            }
            while(_loc1_);
            
         }
         while(true)
         {
            §§push(this.§+S§);
            if(_loc2_)
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     this.§#"9§ = [];
                  }
                  while(_loc2_ || _loc2_)
                  {
                     this.§5!7§ = [];
                     if(_loc2_ || this)
                     {
                        return;
                     }
                  }
                  continue;
               }
               §§push(this.§+S§);
            }
            §§pop().mClip.removeChildAt(0);
         }
      }
      
      protected function §!#<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@;§ = new §]#[§(this);
            while(true)
            {
               §@;§.init(§&$§.§@8§.Views.View_LevelSelection[0]);
            }
            addr83:
         }
         loop1:
         while(true)
         {
            this.§+S§ = §@;§.getItemByName("Container_LevelRepeaters") as § #^§;
            while(!_loc1_)
            {
               this.§-#B§ = §@;§.getItemByName("Container_LevelSelection") as § #^§;
               if(!_loc2_)
               {
                  continue;
               }
               if(!_loc1_)
               {
                  break loop1;
               }
               §§goto(addr83);
            }
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §§push(§,!q§.§9!,§);
               while(true)
               {
                  §§pop().clearLevel();
                  loop2:
                  while(true)
                  {
                     §§push(§,!q§.§9!,§);
                     if(_loc3_ && _loc3_)
                     {
                        break;
                     }
                     §§pop().§]"J§(false);
                     while(true)
                     {
                        this.§&#G§();
                        loop4:
                        while(_loc2_ || param1)
                        {
                           §4#;§.singleton.playThemeMusic();
                           while(true)
                           {
                              if(this.§#"9§.length != 1)
                              {
                                 (§@;§.getItemByName("Button_Prev") as §^"m§).setVisibility(true);
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(!(_loc2_ || param1))
                                             {
                                                break;
                                             }
                                             (§@;§.getItemByName("Button_Next") as §^"m§).setVisibility(true);
                                             continue;
                                          }
                                          addr171:
                                          while(true)
                                          {
                                             (§@;§.getItemByName("Button_Prev") as §^"m§).setVisibility(false);
                                          }
                                       }
                                       while(true)
                                       {
                                          (§@;§.getItemByName("Button_Next") as §^"m§).setVisibility(false);
                                       }
                                    }
                                    while(true)
                                    {
                                       (§@;§.getItemByName("TextField_LevelNumberSmall") as §6!D§).setVisibility(false);
                                       while(_loc2_)
                                       {
                                          while(true)
                                          {
                                             this.§]3§ = this.§+S§.x;
                                             §§goto(addr80);
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                                 continue loop2;
                              }
                              §§goto(addr171);
                              if(!(_loc3_ && param1))
                              {
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         addr80:
         for(; §@;§.stage; if(!(_loc2_ || param1))
         {
            continue;
         },if(!_loc3_)
         {
            if(_loc2_ || param1)
            {
               continue loop5;
            }
            continue loop10;
         },addr89:,while(true)
         {
            continue loop9;
         })
         {
            if(_loc2_ || _loc3_)
            {
               if(_loc2_)
               {
                  §@;§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§#"@§);
                  continue;
               }
               continue loop6;
            }
         }
         addr19:
      }
      
      protected function §#"@§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(param1.keyCode != Keyboard.LEFT)
            {
               if(param1.keyCode == Keyboard.RIGHT)
               {
                  if(!_loc3_)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        if(!_loc3_)
                        {
                           this.§#!h§();
                           addr24:
                           return;
                           addr69:
                        }
                        else
                        {
                           addr75:
                           this.§^!V§();
                        }
                        §§goto(addr24);
                     }
                  }
                  §§goto(addr69);
               }
               §§goto(addr24);
            }
            §§goto(addr75);
         }
         §§goto(addr24);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.update(param1);
            while(true)
            {
               this.§]!f§();
               §§goto(addr59);
            }
         }
         addr59:
         while(true)
         {
            this.§4#3§();
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §]!f§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc4_ && this))
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(this.§5!7§);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(!_loc4_)
                     {
                        if(§§pop() >= §§pop().length)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              if(!(_loc4_ && this))
                              {
                                 if(_loc3_ || _loc1_)
                                 {
                                    §§push(this.§#"x§);
                                    if(!_loc4_)
                                    {
                                       addr181:
                                       §§push(this.§?"Y§);
                                       if(_loc3_)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(this.§?"Y§);
                                                loop1:
                                                for(; _loc3_; §§push(this.§?"Y§),if(_loc4_ && _loc2_)
                                                {
                                                   continue;
                                                },if(_loc3_ || this)
                                                {
                                                   §§push(this.§#"x§);
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr194);
                                                   }
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            this.§3s§ = this.§#"x§ - 1;
                                                            §§goto(addr124);
                                                         }
                                                         §§goto(addr452);
                                                      }
                                                      §§goto(addr124);
                                                   }
                                                   else
                                                   {
                                                      this.§3s§ = this.§#"x§;
                                                   }
                                                   §§goto(addr83);
                                                },§§goto(addr499))
                                                {
                                                   §§push(this.§#"x§);
                                                   while(§§pop() <= §§pop())
                                                   {
                                                      continue loop1;
                                                   }
                                                   loop39:
                                                   while(_loc3_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            this.§3s§ = this.§#"x§ + 1;
                                                            loop19:
                                                            while(true)
                                                            {
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  this.§@"r§.§?s§(this.§!"@§[this.§3s§].red,this.§!"@§[this.§3s§].green,this.§!"@§[this.§3s§].blue);
                                                                  loop18:
                                                                  while(!_loc4_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           loop48:
                                                                           while(true)
                                                                           {
                                                                              this.§]3§ = this.§+S§.x;
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop39;
                                                                                 }
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                    loop49:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc4_ && _loc1_))
                                                                                       {
                                                                                          §§push(this.§]3§);
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr345:
                                                                                                §§push(-§§pop());
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(this.§#"9§);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§push(_loc1_);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            if(!(_loc4_ && _loc1_))
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  addr365:
                                                                                                                  §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                                  if(_loc4_ && _loc3_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  loop55:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           addr378:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              break loop48;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr377:
                                                                                                                     }
                                                                                                                     addr208:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc1_++;
                                                                                                                        addr210:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_ || _loc1_)
                                                                                                                           {
                                                                                                                              if(!(_loc4_ && _loc1_))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              loop37:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§,";§(_loc1_);
                                                                                                                                 addr452:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc4_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          if(_loc3_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             loop4:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§+S§);
                                                                                                                                                if(_loc3_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(-§§pop().x);
                                                                                                                                                   loop5:
                                                                                                                                                   while(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§#"9§);
                                                                                                                                                      while(!(_loc4_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                                                            if(!(_loc3_ || _loc3_))
                                                                                                                                                            {
                                                                                                                                                               continue loop49;
                                                                                                                                                            }
                                                                                                                                                            if(_loc3_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        continue loop49;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop55;
                                                                                                                                                                  }
                                                                                                                                                                  addr539:
                                                                                                                                                                  addr567:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr568:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§]3§);
                                                                                                                                                                        break loop5;
                                                                                                                                                                     }
                                                                                                                                                                     addr569:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        continue loop4;
                                                                                                                                                                     }
                                                                                                                                                                     loop54:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        addr542:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc2_ = §§pop();
                                                                                                                                                                           addr543:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              loop14:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc2_);
                                                                                                                                                                                 addr499:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§5!7§);
                                                                                                                                                                                    addr501:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() >= §§pop().length)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§#"x§ = _loc1_;
                                                                                                                                                                                             addr506:
                                                                                                                                                                                             §§push(this.§5!7§);
                                                                                                                                                                                             addr485:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc1_);
                                                                                                                                                                                                addr486:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                                                                                   addr489:
                                                                                                                                                                                                   while(!(_loc3_ || _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop54;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   (§@;§.getItemByName("TextField_LevelNumberSmall") as §6!D§).x = this.§5!7§[_loc1_].x;
                                                                                                                                                                                                   continue loop37;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr503:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§5!7§);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc2_);
                                                                                                                                                                                             addr516:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                                                                addr519:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc2_++;
                                                                                                                                                                                                   addr509:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop14;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr515:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr539:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr568);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr567);
                                                                                                                                                                  }
                                                                                                                                                                  addr566:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr539);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc1_);
                                                                                                                                                         addr534:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr537);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr533);
                                                                                                                                                         }
                                                                                                                                                         addr531:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§#"9§);
                                                                                                                                                            addr562:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc1_);
                                                                                                                                                               addr563:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr550:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr566);
                                                                                                                                                      §§goto(addr569);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr539);
                                                                                                                                                   addr399:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr548:
                                                                                                                                                }
                                                                                                                                                §§goto(addr550);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr568);
                                                                                                                                       }
                                                                                                                                       §§goto(addr509);
                                                                                                                                    }
                                                                                                                                    §§goto(addr489);
                                                                                                                                    continue loop37;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr377);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr563);
                                                                                                            }
                                                                                                            §§goto(addr534);
                                                                                                         }
                                                                                                         §§goto(addr411);
                                                                                                      }
                                                                                                      §§goto(addr562);
                                                                                                   }
                                                                                                   §§goto(addr403);
                                                                                                }
                                                                                                §§goto(addr399);
                                                                                             }
                                                                                             §§goto(addr531);
                                                                                          }
                                                                                          §§goto(addr345);
                                                                                       }
                                                                                       §§goto(addr543);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_ || _loc1_)
                                                                                    {
                                                                                       this.§#"x§ = _loc1_;
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§5!7§);
                                                                                          if(!(_loc4_ && _loc1_))
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                break loop18;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   if(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                      §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                      _loc2_++;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr267:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_);
                                                                                                            break loop1;
                                                                                                         }
                                                                                                      }
                                                                                                      addr303:
                                                                                                      addr331:
                                                                                                   }
                                                                                                   §§goto(addr516);
                                                                                                }
                                                                                                §§goto(addr486);
                                                                                             }
                                                                                             addr314:
                                                                                          }
                                                                                          addr309:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§goto(addr314);
                                                                                                   §§push(_loc2_);
                                                                                                }
                                                                                                §§goto(addr515);
                                                                                             }
                                                                                             §§goto(addr485);
                                                                                          }
                                                                                       }
                                                                                       addr300:
                                                                                    }
                                                                                    §§goto(addr303);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    addr124:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       continue loop19;
                                                                                    }
                                                                                 }
                                                                                 addr83:
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr267);
                                                                              }
                                                                              §§goto(addr503);
                                                                           }
                                                                           addr379:
                                                                           addr25:
                                                                        }
                                                                        §§goto(addr506);
                                                                     }
                                                                     §§goto(addr331);
                                                                  }
                                                                  (§@;§.getItemByName("TextField_LevelNumberSmall") as §6!D§).x = this.§5!7§[_loc1_].x;
                                                                  addr249:
                                                                  while(true)
                                                                  {
                                                                     this.§,";§(_loc1_);
                                                                     break loop39;
                                                                  }
                                                                  addr236:
                                                                  §§goto(addr208);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr519);
                                                      }
                                                      §§goto(addr379);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§goto(addr236);
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      §§push(this.§5!7§);
                                                      while(true)
                                                      {
                                                         if(§§pop() >= §§pop().length)
                                                         {
                                                            §§goto(addr290);
                                                         }
                                                         else
                                                         {
                                                            §§push(this.§5!7§);
                                                         }
                                                         §§goto(addr309);
                                                      }
                                                      addr288:
                                                   }
                                                   §§goto(addr542);
                                                   §§goto(addr267);
                                                }
                                                addr190:
                                             }
                                             §§goto(addr195);
                                          }
                                          §§goto(addr25);
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr300);
                              }
                              §§goto(addr210);
                           }
                           §§goto(addr194);
                        }
                        else
                        {
                           §§push(this.§+S§);
                        }
                        §§goto(addr548);
                     }
                     §§goto(addr501);
                  }
                  §§goto(addr288);
               }
               §§goto(addr378);
            }
            §§goto(addr181);
         }
      }
      
      protected function §4#3§() : void
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
               if(§§pop() >= this.§#"9§.length)
               {
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc3_)
                              {
                                 if(§§pop() > 1000)
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§push(1000);
                                       addr163:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr164:
                                          while(true)
                                          {
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                continue loop1;
                                             }
                                             if(_loc3_)
                                             {
                                                _loc2_ = §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   addr125:
                                                   while(true)
                                                   {
                                                      if(Math.abs(this.§#"9§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§#"9§);
                                                            addr144:
                                                            while(true)
                                                            {
                                                               §§push(_loc1_);
                                                               addr145:
                                                               while(true)
                                                               {
                                                                  §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                                                  addr153:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                         }
                                                         addr142:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§#"9§);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§push(_loc1_);
                                                            for(; _loc3_; if(_loc4_ && this)
                                                            {
                                                               continue;
                                                            },(§§pop()[§§pop()] as §?"o§).setEnabled(true),while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr45);
                                                               }
                                                               §§goto(addr153);
                                                            })
                                                            {
                                                               if(§§pop()[§§pop()].mClip.alpha < 1)
                                                               {
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr117:
                                                                        (this.§#"9§[_loc1_] as §?"o§).setEnabled(false);
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc1_++;
                                                                              addr47:
                                                                              while(!_loc3_)
                                                                              {
                                                                                 §§goto(addr142);
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        addr122:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(Math.abs(_loc2_)));
                                                                           continue loop1;
                                                                        }
                                                                        addr205:
                                                                     }
                                                                  }
                                                                  §§goto(addr122);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.§#"9§);
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr117);
                                                                     }
                                                                     §§goto(addr144);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr117);
                                                                  }
                                                               }
                                                               §§goto(addr117);
                                                            }
                                                            §§goto(addr145);
                                                         }
                                                         §§goto(addr117);
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                }
                                                addr204:
                                             }
                                             §§goto(addr205);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr164);
                           }
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr47);
               }
               else
               {
                  §§push(Number(this.§+S§.x + this.§#"9§[_loc1_].x));
               }
               §§goto(addr204);
            }
            §§goto(addr163);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(§@;§.stage)
            {
               while(true)
               {
                  §@;§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§#"@§);
                  addr95:
                  while(true)
                  {
                  }
               }
               addr88:
            }
            loop2:
            while(true)
            {
               super.deActivate();
               loop3:
               while(true)
               {
                  this.§`!I§();
                  addr66:
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        continue loop3;
                     }
                     if(!_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr88);
                  }
                  continue loop2;
               }
            }
         }
         while(true)
         {
            (§@;§.getItemByName("Button_Back") as §^"m§).setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
            do
            {
               §+!b§.resetPreviousLevel();
            }
            while(!(_loc1_ || _loc2_));
            
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr95);
            }
            §§goto(addr66);
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§>!M§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr75:
                     this.§>!M§.stop();
                     addr76:
                     while(true)
                     {
                        this.§>!M§ = null;
                        addr55:
                        while(true)
                        {
                        }
                     }
                     addr76:
                  }
                  §§goto(addr76);
               }
               while(true)
               {
                  super.cleanup();
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  if(!(_loc2_ && _loc2_))
                  {
                     break;
                  }
                  §§goto(addr76);
               }
               return;
            }
         }
         §§goto(addr75);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
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
                           §§push(param3 is §&E§);
                           if(!(_loc6_ && this))
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push((param3 as §&E§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                                       if(!(_loc6_ && param2))
                                       {
                                          §§push(§§pop());
                                          if(!(_loc5_ || param2))
                                          {
                                             continue loop1;
                                          }
                                          if(!§§pop())
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                §§pop();
                                                loop5:
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push((param3 as §&E§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                                                   if(_loc5_ || param2)
                                                   {
                                                      if(_loc6_ && this)
                                                      {
                                                         continue loop2;
                                                      }
                                                      while(§§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(!(_loc6_ && param3))
                                                            {
                                                               addr128:
                                                               §§push(this.§!!Q§);
                                                               if(_loc6_ && param3)
                                                               {
                                                                  break loop5;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  break;
                                                               }
                                                               if(!(_loc5_ || param1))
                                                               {
                                                                  break loop4;
                                                               }
                                                               addr153:
                                                               if(!_loc6_)
                                                               {
                                                                  §+!b§.loadLevel(§+!b§.getValidLevelId(param2.toLowerCase()));
                                                                  break loop4;
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop8;
                                                         }
                                                         §§goto(addr153);
                                                      }
                                                      var _loc4_:* = param2;
                                                      if(!_loc6_)
                                                      {
                                                         if("BACK" === _loc4_)
                                                         {
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               §§push(0);
                                                               if(!_loc5_)
                                                               {
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr239);
                                                            }
                                                         }
                                                         else if("NEXT" === _loc4_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               addr239:
                                                               §§push(1);
                                                               if(!_loc5_)
                                                               {
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr248);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            if("PREV" === _loc4_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  addr248:
                                                                  §§push(2);
                                                                  if(!_loc5_)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            else if("FULLSCREEN_BUTTON" !== _loc4_)
                                                            {
                                                               addr278:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     §?!r§.§"#_§("Menu_Back");
                                                                     § g§(§"C§.§^!7§);
                                                                     addr83:
                                                                     if(_loc6_ && param3)
                                                                     {
                                                                        §§goto(addr83);
                                                                     }
                                                                     break;
                                                                  case 1:
                                                                     this.§#!h§();
                                                                     break;
                                                                     addr63:
                                                                  case 2:
                                                                     this.§^!V§();
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              addr34:
                                                                              break;
                                                                           }
                                                                           §§goto(addr83);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr63);
                                                                        }
                                                                     }
                                                                     break;
                                                                  case 3:
                                                                     §?!r§.§"#_§("Menu_Confirm");
                                                                     §4#;§.singleton.§5"q§();
                                                                     addr40:
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§goto(addr40);
                                                                        }
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr34);
                                                                     }
                                                               }
                                                               return;
                                                               §§push(4);
                                                            }
                                                            §§goto(addr278);
                                                            if(_loc5_ || this)
                                                            {
                                                               §§goto(addr273);
                                                            }
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                      §§goto(addr239);
                                                   }
                                                   §§goto(addr128);
                                                }
                                             }
                                             § g§(StateCutScene.§^!7§);
                                             addr161:
                                             if(_loc6_)
                                             {
                                                §§goto(addr161);
                                             }
                                             addr201:
                                             §§goto(addr77);
                                             addr201:
                                          }
                                          §§goto(addr115);
                                       }
                                       §§goto(addr201);
                                    }
                                    addr177:
                                 }
                                 §§goto(addr77);
                              }
                           }
                           §§goto(addr201);
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr175);
               }
            }
         }
         §§goto(addr177);
      }
      
      protected function §#!h§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §?!r§.§"#_§("Menu_Confirm");
            if(!_loc4_)
            {
               if(!this.§!!Q§)
               {
                  if(_loc3_ || _loc2_)
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§?"Y§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(!_loc4_)
                     {
                        _loc1_.§?"Y§ = _loc2_;
                     }
                     if(!_loc4_)
                     {
                        addr70:
                        this.§@"f§(this.§?"Y§);
                     }
                  }
                  §§goto(addr70);
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      protected function §^!V§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §?!r§.§"#_§("Menu_Confirm");
            if(!(_loc3_ && _loc3_))
            {
               addr34:
               if(!this.§!!Q§)
               {
                  if(_loc4_ || _loc2_)
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§?"Y§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc2_:* = §§pop();
                     if(!(_loc3_ && this))
                     {
                        _loc1_.§?"Y§ = _loc2_;
                     }
                     if(!_loc4_)
                     {
                     }
                     §§goto(addr95);
                  }
                  this.§@"f§(this.§?"Y§);
               }
            }
            addr95:
            return;
         }
         §§goto(addr34);
      }
      
      public function §&#G§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:* = Number(0);
         if(!(_loc9_ && this))
         {
            this.§!"@§ = [];
            if(_loc10_ || _loc1_)
            {
               addr52:
               this.§;!^§ = [];
            }
            var _loc2_:§3![§ = §+!b§.getEpisode(§+!b§.currentEpisode);
            if(_loc10_ || _loc3_)
            {
               this.§?"Y§ = _loc2_.currentPage;
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     this.§3s§ = this.§?"Y§;
                     do
                     {
                        this.§#"x§ = this.§?"Y§;
                     }
                     while(!(_loc10_ || _loc1_));
                     
                     if(_loc9_ && this)
                     {
                        break;
                     }
                     while(false)
                     {
                        continue loop1;
                     }
                     var _loc3_:* = Number(0);
                     while(_loc3_ < _loc2_.§6">§)
                     {
                        _loc4_ = _loc2_.§,"O§(_loc3_);
                        if(_loc10_ || _loc3_)
                        {
                           §§push(this.§!"@§);
                           loop5:
                           while(true)
                           {
                              §§pop().push(_loc2_.§^"b§(_loc3_));
                              addr201:
                              while(true)
                              {
                                 §§push(this.§;!^§);
                                 if(!(_loc10_ || _loc1_))
                                 {
                                    continue loop5;
                                 }
                                 §§pop().push(_loc2_.§'"w§(_loc3_));
                                 loop7:
                                 while(true)
                                 {
                                    addr160:
                                    while(true)
                                    {
                                       §§push(this.§6#S§(_loc4_,_loc3_,_loc1_,_loc2_));
                                       loop9:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop10:
                                          while(true)
                                          {
                                             _loc1_ = §§pop();
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   _loc3_ = §§pop();
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue;
                                                }
                                                continue loop10;
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr201);
                     }
                     if(_loc10_ || _loc1_)
                     {
                        this.§@"r§ = new §4! §(this.§!"@§[this.§?"Y§].red,this.§!"@§[this.§?"Y§].green,this.§!"@§[this.§?"Y§].blue,1);
                        if(_loc10_ || _loc2_)
                        {
                           §@;§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§@"r§);
                           if(_loc10_ || _loc1_)
                           {
                              if(_loc2_.§@#$§)
                              {
                                 if(_loc10_ || _loc2_)
                                 {
                                    addr266:
                                    _loc6_ = new (_loc5_ = §5_§.§`"G§(_loc2_.§@#$§))();
                                    if(!(_loc9_ && this))
                                    {
                                       §@;§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                                       if(!_loc9_)
                                       {
                                          addr297:
                                          if(_loc2_.§#!w§)
                                          {
                                             if(!(_loc9_ && _loc1_))
                                             {
                                                addr307:
                                                _loc8_ = new (_loc7_ = §5_§.§`"G§(_loc2_.§#!w§))();
                                                if(!_loc9_)
                                                {
                                                   §@;§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                                                   if(_loc10_ || this)
                                                   {
                                                      addr338:
                                                      this.§9!W§();
                                                      if(_loc10_)
                                                      {
                                                         if(§'"6§ != StateCutScene.§^!7§)
                                                         {
                                                            this.§@"f§(this.§?"Y§,true);
                                                            if(_loc9_ && _loc1_)
                                                            {
                                                               while(_loc9_)
                                                               {
                                                                  §§goto(addr390);
                                                               }
                                                               addr368:
                                                            }
                                                            else
                                                            {
                                                               addr362:
                                                            }
                                                            return;
                                                         }
                                                         if(_loc10_)
                                                         {
                                                            addr387:
                                                            §'"6§ = "";
                                                         }
                                                         while(true)
                                                         {
                                                            this.§@"f§(this.§#"x§);
                                                         }
                                                         addr390:
                                                         §§goto(addr368);
                                                         addr342:
                                                      }
                                                      §§goto(addr362);
                                                   }
                                                   §§goto(addr342);
                                                }
                                                §§goto(addr387);
                                             }
                                          }
                                          else
                                          {
                                             §@;§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                                          }
                                          §§goto(addr338);
                                       }
                                    }
                                    §§goto(addr307);
                                 }
                              }
                              else
                              {
                                 §@;§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                              }
                           }
                           §§goto(addr297);
                        }
                     }
                     §§goto(addr266);
                  }
               }
            }
            §§goto(addr88);
         }
         §§goto(addr52);
      }
      
      protected function §6#S§(param1:Array, param2:int, param3:Number, param4:§3![§) : Number
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:* = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §5_§.§`"G§(this.§;!^§[param2]);
         var _loc7_:* = Number(0);
         loop0:
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(!_loc15_)
            {
               §§push(§4#;§.singleton.dataModel.userProgress.isLevelOpen(_loc10_));
               if(_loc14_ || param3)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(_loc15_ && param2)
               {
                  break;
               }
               _loc12_ = this.§,#=§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
               (_loc13_ = <Button/>).@name = _loc10_;
               if(!_loc15_)
               {
                  §§push(_loc11_);
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(§4#;§.§<N§);
                                 if(!_loc15_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 while(_loc14_ || this)
                                 {
                                    if(_loc15_)
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc11_);
                                       if(!_loc14_)
                                       {
                                          break;
                                       }
                                       if(!_loc14_)
                                       {
                                          continue loop2;
                                       }
                                       if(§§pop())
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             if(_loc15_)
                                             {
                                                break;
                                                addr155:
                                             }
                                             _loc12_.MovieClip_Stars.mouseEnabled = false;
                                             while(true)
                                             {
                                                if(!_loc15_)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      _loc13_.@MouseUp = _loc10_;
                                                      addr213:
                                                      loop15:
                                                      while(true)
                                                      {
                                                         addr171:
                                                         while(true)
                                                         {
                                                            _loc13_.@scaleOnMouseOver = "True";
                                                            addr175:
                                                            while(true)
                                                            {
                                                               if(!(_loc15_ && param3))
                                                               {
                                                                  _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                                                  break loop11;
                                                               }
                                                               continue loop15;
                                                            }
                                                            continue loop15;
                                                         }
                                                      }
                                                   }
                                                   addr200:
                                                }
                                             }
                                             continue loop4;
                                             addr117:
                                             if(!(_loc14_ || this))
                                             {
                                                continue;
                                             }
                                             if(_loc14_ || param2)
                                             {
                                                addr131:
                                                if(false)
                                                {
                                                   while(true)
                                                   {
                                                      _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                                      while(_loc14_)
                                                      {
                                                         §§push(_loc7_);
                                                         if(!(_loc15_ && this))
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(_loc14_)
                                                            {
                                                               addr113:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            _loc7_ = §§pop();
                                                            if(_loc15_)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr117);
                                                         }
                                                         §§goto(addr113);
                                                      }
                                                      §§goto(addr155);
                                                      §§goto(addr131);
                                                   }
                                                   addr133:
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr175);
                                          }
                                          continue;
                                       }
                                       §§goto(addr133);
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§goto(addr200);
                           }
                           §§goto(addr171);
                        }
                     }
                  }
               }
               §§goto(addr213);
            }
            break;
         }
         _loc8_ = <Repeater/>;
         if(!(_loc15_ && param2))
         {
            §§push(param1);
            loop16:
            while(true)
            {
               if(§§pop().length != 15)
               {
                  continue;
               }
               if(!(_loc15_ && this))
               {
                  addr331:
                  _loc8_.@name = "Repeater_LevelSelection15";
               }
               while(true)
               {
                  loop18:
                  while(true)
                  {
                     _loc8_.@button = this.§;!^§[param2];
                     while(true)
                     {
                        _loc8_.@enabled = "True";
                        loop20:
                        while(true)
                        {
                           if(!_loc14_)
                           {
                              break loop16;
                              addr261:
                           }
                           while(true)
                           {
                              _loc8_.@buttonSelectionType = "NO_SELECTION";
                              while(true)
                              {
                                 if(_loc14_ || this)
                                 {
                                    if(_loc15_ && param2)
                                    {
                                       break;
                                    }
                                    _loc8_.@fromLibrary = "true";
                                    if(_loc14_ || param3)
                                    {
                                       continue loop20;
                                    }
                                    continue;
                                 }
                                 addr301:
                                 while(true)
                                 {
                                    continue loop18;
                                 }
                              }
                              addr319:
                              while(true)
                              {
                                 continue loop18;
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               _loc8_.@name = "Repeater_LevelSelection12";
               §§goto(addr319);
            }
         }
         §§goto(addr331);
      }
      
      protected function §,#=§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
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
                  loop1:
                  while(true)
                  {
                     if(!(_loc8_ && this))
                     {
                        loop2:
                        while(true)
                        {
                           _loc6_.isOpen = param2;
                           addr116:
                           addr34:
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 continue loop1;
                              }
                              if(_loc9_ || param2)
                              {
                                 continue loop0;
                              }
                              loop13:
                              while(true)
                              {
                                 _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                                 addr186:
                                 loop14:
                                 while(true)
                                 {
                                    _loc6_.MovieClip_Feather.mouseEnabled = false;
                                    addr168:
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc9_)
                                       {
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          addr205:
                                          while(true)
                                          {
                                             _loc6_.gotoAndStop("Open");
                                          }
                                       }
                                       while(true)
                                       {
                                          _loc6_.MovieClip_MEInUse.visible = false;
                                          while(true)
                                          {
                                             §§push(§4#;§.singleton);
                                             addr176:
                                             while(true)
                                             {
                                                §§push(§§pop().dataModel);
                                                addr177:
                                                while(true)
                                                {
                                                   §§push(§§pop().userProgress);
                                                   addr178:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      addr179:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().getEagleScoreForLevel(§§pop()));
                                                         addr180:
                                                         while(true)
                                                         {
                                                            if(§§pop() == 100)
                                                            {
                                                               continue loop13;
                                                            }
                                                            addr162:
                                                            _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                                                            while(true)
                                                            {
                                                               _loc6_.MovieClip_Feather.mouseEnabled = false;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr147:
                                             if(!(_loc8_ && param1))
                                             {
                                                break loop5;
                                             }
                                          }
                                          continue loop14;
                                       }
                                       continue loop14;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           addr34:
                           return _loc6_;
                        }
                     }
                     while(true)
                     {
                        if(!_loc8_)
                        {
                           §§goto(addr147);
                        }
                        §§goto(addr186);
                     }
                  }
               }
            }
         }
         §§goto(addr205);
      }
      
      protected function §9!W§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(!(_loc5_ && _loc2_))
         {
            if(this.§#"9§.length == 1)
            {
               if(_loc6_)
               {
                  §§goto(addr37);
               }
            }
            var _loc3_:* = Number(0);
            if(_loc6_ || this)
            {
               this.§+!V§ = new Dictionary();
            }
            var _loc4_:int = 0;
            while(_loc4_ < this.§#"9§.length)
            {
               _loc1_ = §5_§.§`"G§("Button_Dot");
               _loc2_ = new _loc1_();
               if(_loc6_ || this)
               {
                  _loc2_.x = §4#;§.screenWidth / 2 + _loc3_ - this.§#"9§.length * _loc2_.width / 2;
                  while(true)
                  {
                     _loc2_.y = (§@;§.getItemByName("Button_Next") as §^"m§).y - _loc2_.height / 2;
                     loop2:
                     while(true)
                     {
                        if(_loc4_ == this.§?"Y§)
                        {
                           while(true)
                           {
                              _loc2_.gotoAndStop("Selected");
                           }
                           addr233:
                        }
                        else
                        {
                           _loc2_.gotoAndStop("UnSelected");
                           loop3:
                           while(true)
                           {
                              addr170:
                              while(true)
                              {
                                 this.§-#B§.mClip.addChild(_loc2_);
                                 addr176:
                                 while(_loc6_)
                                 {
                                    this.§+!V§[_loc2_] = _loc4_;
                                    while(true)
                                    {
                                       this.§5!7§.push(_loc2_);
                                       addr162:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          if(_loc6_ || this)
                                          {
                                             §§push(Number(§§pop() + _loc2_.width));
                                          }
                                          _loc3_ = §§pop();
                                          continue loop3;
                                       }
                                    }
                                 }
                                 loop10:
                                 while(_loc5_)
                                 {
                                    while(true)
                                    {
                                       (§@;§.getItemByName("TextField_LevelNumberSmall") as §6!D§).y = _loc2_.y - _loc2_.height;
                                       continue loop10;
                                    }
                                 }
                                 this.§,";§(_loc4_);
                                 continue loop2;
                              }
                              continue loop2;
                           }
                        }
                        §§goto(addr236);
                     }
                     if(!(_loc6_ || this))
                     {
                        continue;
                     }
                     _loc4_++;
                     if(!(_loc5_ && _loc3_))
                     {
                        §§goto(addr82);
                     }
                     §§goto(addr106);
                  }
               }
               §§goto(addr134);
            }
            if(_loc6_ || this)
            {
               §§push(this.§#"9§.length * _loc2_.width);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() / 2);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(§§pop() + _loc2_.width * 1.5);
                     if(!_loc5_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               _loc3_ = §§pop();
               if(!(_loc5_ && this))
               {
                  (§@;§.getItemByName("Button_Next") as §^"m§).x = §4#;§.screenWidth / 2;
                  loop17:
                  while(true)
                  {
                     (§@;§.getItemByName("Button_Prev") as §^"m§).x = §4#;§.screenWidth / 2;
                     while(true)
                     {
                        (§@;§.getItemByName("Button_Next") as §^"m§).x = (§@;§.getItemByName("Button_Next") as §^"m§).x + (_loc3_ + 10);
                        while(_loc6_)
                        {
                           if(!_loc5_)
                           {
                              (§@;§.getItemByName("Button_Prev") as §^"m§).x = (§@;§.getItemByName("Button_Prev") as §^"m§).x - (_loc3_ + 10);
                              if(!_loc5_)
                              {
                              }
                              continue;
                           }
                           continue loop17;
                        }
                     }
                  }
                  addr320:
               }
               return;
            }
            §§goto(addr320);
         }
         addr37:
      }
      
      protected function §`!I§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§@"r§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr33:
                     this.§@"r§.§%!G§();
                  }
               }
               var _loc1_:int = 0;
               loop0:
               while(true)
               {
                  if(_loc1_ >= this.§5!7§.length)
                  {
                     if(_loc3_)
                     {
                        this.§5!7§ = [];
                     }
                     loop1:
                     while(!(_loc2_ && _loc1_))
                     {
                        this.§+S§.§7N§();
                        while(true)
                        {
                           if(_loc3_ || _loc1_)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       this.§5!7§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§^"3§);
                                       addr145:
                                       while(true)
                                       {
                                          §§push(this.§-#B§);
                                          if(!_loc2_)
                                          {
                                             §§pop().mClip.removeChild(this.§5!7§[_loc1_]);
                                             break loop1;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    _loc1_++;
                                 }
                                 else
                                 {
                                    addr100:
                                 }
                                 continue;
                                 break;
                              }
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                     §§goto(addr100);
                  }
                  else
                  {
                     §§push(this.§-#B§);
                  }
                  §§goto(addr119);
               }
               return;
            }
         }
         §§goto(addr33);
      }
      
      protected function §^"3§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(!this.§!!Q§)
            {
               if(!_loc2_)
               {
                  addr49:
                  this.§@"f§(this.§+!V§[param1.target]);
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      protected function §5#P§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!this.§!!Q§)
            {
               if(_loc3_ || _loc2_)
               {
                  § g§(§+#?§.§^!7§);
               }
            }
         }
      }
      
      protected function §@"f§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§!!Q§ = true;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(§§pop() <= this.§#"9§.length - 1)
                  {
                     §§push(param1);
                     if(_loc7_)
                     {
                        §§push(0);
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc7_)
                                    {
                                       §§push(0);
                                       loop9:
                                       while(_loc7_)
                                       {
                                          param1 = §§pop();
                                          while(true)
                                          {
                                             addr102:
                                             while(true)
                                             {
                                                this.§?"Y§ = param1;
                                                loop5:
                                                while(true)
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(this.§?"Y§);
                                                      loop7:
                                                      while(_loc7_ || _loc3_)
                                                      {
                                                         §§push(this.§#"x§);
                                                         while(true)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  if(!(_loc7_ || param2))
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(!(_loc7_ || param1))
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  this.§3s§ = this.§#"x§ + 1;
                                                               }
                                                               break loop6;
                                                               addr101:
                                                            }
                                                            §§push(this.§?"Y§);
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  continue;
                                                               }
                                                               continue loop9;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                   break loop3;
                                                }
                                             }
                                          }
                                       }
                                       continue loop1;
                                       addr120:
                                    }
                                    continue loop0;
                                 }
                                 addr131:
                                 while(true)
                                 {
                                    §§push(this.§#"9§);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop().length - 1);
                                       if(_loc7_)
                                       {
                                          §§push(int(§§pop()));
                                          while(true)
                                          {
                                             param1 = §§pop();
                                             §§goto(addr141);
                                          }
                                          addr140:
                                       }
                                       addr160:
                                       var _loc3_:* = §§pop();
                                       var _loc4_:Number = this.§#"9§[param1].x + this.§+S§.x;
                                       var _loc5_:*;
                                       §§push(_loc5_ = Number(Math.abs(_loc4_)));
                                       if(!(_loc6_ && param2))
                                       {
                                          §§push(§§pop() / 1024);
                                          if(_loc7_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc7_)
                                             {
                                                addr207:
                                                §§push(§§pop());
                                                if(!_loc6_)
                                                {
                                                   _loc5_ = §§pop();
                                                   addr228:
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      addr218:
                                                      §§push(§'!i§);
                                                   }
                                                   _loc5_ = §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      §§push(this.§>!M§);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(§§pop() != null)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§>!M§);
                                                               addr352:
                                                               while(true)
                                                               {
                                                                  §§pop().stop();
                                                                  addr353:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            addr350:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param2);
                                                            loop19:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     this.§+S§.x = _loc3_;
                                                                     loop25:
                                                                     while(true)
                                                                     {
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           §§push(param2);
                                                                           if(!(_loc7_ || this))
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              §§push(this.§>!M§);
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§pop().play();
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr275:
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop25;
                                                                                    }
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          §§goto(addr232);
                                                                                       }
                                                                                       continue loop24;
                                                                                    }
                                                                                    addr327:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§>!M§);
                                                                                       continue loop15;
                                                                                    }
                                                                                 }
                                                                                 addr286:
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr232:
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr350);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop23;
                                                                                       §§goto(addr286);
                                                                                    }
                                                                                    §§goto(addr353);
                                                                                    addr309:
                                                                                 }
                                                                                 §§goto(addr353);
                                                                              }
                                                                              §§goto(addr352);
                                                                           }
                                                                           §§goto(addr275);
                                                                        }
                                                                        if(_loc7_ || _loc3_)
                                                                        {
                                                                           this.§]2§();
                                                                           §§goto(addr286);
                                                                        }
                                                                        §§goto(addr353);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  this.§>!M§ = §-#C§.§%!E§.§^!H§(this.§+S§,{"x":_loc3_},null,_loc5_,§9r§.easeOut);
                                                               }
                                                               §§goto(addr327);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr353);
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§goto(addr228);
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr228);
                                             }
                                             §§goto(addr218);
                                          }
                                          §§goto(addr228);
                                       }
                                       §§goto(addr207);
                                    }
                                    break loop3;
                                 }
                                 §§goto(addr140);
                              }
                              §§push(-§§pop()[param1].x);
                              if(!(_loc6_ && param1))
                              {
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr102);
                        }
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr131);
               }
            }
         }
         §§goto(addr59);
      }
      
      protected function §]2§() : void
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
               if(§§pop() >= this.§5!7§.length)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc2_)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           if(!_loc2_)
                           {
                              this.§!!Q§ = false;
                              while(_loc3_ || this)
                              {
                                 §+!b§.getEpisode(§+!b§.currentEpisode).currentPage = this.§?"Y§;
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc3_ || this)
                                 {
                                    if(_loc3_)
                                    {
                                       break loop0;
                                    }
                                    addr150:
                                    this.§5!7§[_loc1_].gotoAndStop("Selected");
                                    (§@;§.getItemByName("TextField_LevelNumberSmall") as §6!D§).x = this.§5!7§[_loc1_].x;
                                    addr153:
                                    addr147:
                                    addr149:
                                 }
                                 this.§,";§(_loc1_);
                                 addr91:
                                 _loc1_++;
                                 break;
                                 addr117:
                              }
                              continue;
                              addr83:
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr117);
                     }
                     else
                     {
                        addr112:
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr83);
               }
               else
               {
                  addr134:
                  if(_loc1_ == this.§?"Y§)
                  {
                     §§goto(addr147);
                  }
                  else
                  {
                     §§push(this.§5!7§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(_loc1_);
                        if(_loc3_)
                        {
                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                           §§goto(addr112);
                        }
                        else
                        {
                           §§goto(addr150);
                        }
                     }
                     else
                     {
                        §§goto(addr149);
                     }
                     §§goto(addr150);
                  }
               }
               §§goto(addr150);
            }
            §§goto(addr134);
         }
      }
      
      protected function §,";§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§@;§.getItemByName("TextField_LevelNumberSmall") as §6!D§).§13§.text = §+!b§.getEpisode(§+!b§.currentEpisode).getPageIndex(param1).toString();
         }
      }
   }
}
