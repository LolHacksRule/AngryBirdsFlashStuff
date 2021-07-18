package §+!c§
{
   import §3y§.§9!Z§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §&"[§ extends EventDispatcher
   {
       
      
      private var §##K§:MovieClip;
      
      private var §'!j§:MovieClip;
      
      private var §'!2§:Boolean;
      
      private var §0q§:Boolean = false;
      
      private var §,!D§:int;
      
      private var §4#<§:int;
      
      private var §8#-§:int;
      
      private var §"!v§:Number = NaN;
      
      private var §5o§:Boolean;
      
      private var §;"L§:int;
      
      private var §1;§:Object;
      
      private var §&!;§:Boolean = false;
      
      private var §,c§:Number;
      
      private var §]k§:§[#R§;
      
      private var §@!#§:int;
      
      public function §&"[§(param1:MovieClip, param2:MovieClip, param3:int)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§##K§ = param1;
            loop1:
            while(true)
            {
               this.§'!j§ = param2;
               loop2:
               while(true)
               {
                  this.§'!j§.txtScore.mouseEnabled = false;
                  loop3:
                  while(true)
                  {
                     this.§;"L§ = param3;
                     loop4:
                     while(true)
                     {
                        this.§##K§.mouseChildren = false;
                        while(true)
                        {
                           this.§##K§.txtLevelNumber.text = param3.toString();
                           continue loop3;
                           addr103:
                           loop10:
                           while(_loc4_ || param2)
                           {
                              if(!_loc5_)
                              {
                                 if(_loc4_)
                                 {
                                    this.canBuyToUnlock = false;
                                    while(!_loc5_)
                                    {
                                       this.§##K§.addEventListener(MouseEvent.ROLL_OVER,this.onOver);
                                       loop12:
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop10;
                                          addr54:
                                          while(true)
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop12;
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop4;
                                             }
                                             addr134:
                                             while(true)
                                             {
                                                this.init();
                                                continue loop9;
                                             }
                                          }
                                          continue loop4;
                                       }
                                       continue loop0;
                                       if(_loc4_ || this)
                                       {
                                          return;
                                       }
                                    }
                                    while(_loc4_)
                                    {
                                       this.§,c§ = this.§##K§.scaleX;
                                       §§goto(addr134);
                                       §§goto(addr86);
                                    }
                                    addr86:
                                    continue loop3;
                                    addr140:
                                 }
                                 continue loop1;
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
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§##K§.stop();
         }
         do
         {
            this.§##K§.levelStars.stop();
            do
            {
               this.§##K§.unlockTimer.stop();
            }
            while(_loc2_ && _loc1_);
            
         }
         while(_loc2_);
         
      }
      
      private function onOver(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§##K§.buttonMode)
            {
               loop0:
               while(true)
               {
                  §§push(this.§]k§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(this.§]k§);
                           while(true)
                           {
                              §§pop().stop();
                           }
                           addr113:
                        }
                        while(true)
                        {
                        }
                        addr114:
                     }
                     while(true)
                     {
                        this.§]k§ = §-#C§.§%!E§.§^!H§(this.§##K§,{
                           "scaleX":this.§,c§ + 0.1,
                           "scaleY":this.§,c§ + 0.1
                        },null,0.2,§9!Z§.easeOut);
                        while(!(_loc2_ && param1))
                        {
                           if(!(_loc3_ || _loc2_))
                           {
                              continue loop0;
                           }
                           if(_loc2_)
                           {
                              §§goto(addr119);
                           }
                           §§push(this.§]k§);
                           if(_loc3_ || param1)
                           {
                              §§pop().play();
                              if(!_loc2_)
                              {
                                 return;
                              }
                              continue;
                           }
                        }
                        §§goto(addr114);
                     }
                  }
                  §§goto(addr113);
               }
            }
         }
         addr119:
      }
      
      private function onOut(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§##K§.buttonMode)
            {
               while(true)
               {
                  §§push(this.§]k§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        while(_loc3_ || _loc2_)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr120);
                           }
                           §§push(this.§]k§);
                           while(true)
                           {
                              §§pop().stop();
                              addr115:
                              while(true)
                              {
                              }
                           }
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           return;
                           addr66:
                        }
                        continue;
                     }
                     loop2:
                     while(true)
                     {
                        this.§]k§ = §-#C§.§%!E§.§^!H§(this.§##K§,{
                           "scaleX":this.§,c§,
                           "scaleY":this.§,c§
                        },null,0.2,§9!Z§.easeOut);
                        while(true)
                        {
                           §§push(this.§]k§);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§pop().play();
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              §§goto(addr49);
                           }
                           break;
                        }
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr114);
               }
            }
            addr120:
            return;
         }
         §§goto(addr66);
      }
      
      private function §^!R§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new MouseEvent(MouseEvent.CLICK));
         }
      }
      
      public function get §@"T§() : int
      {
         return this.§;"L§;
      }
      
      public function get §[!@§() : Object
      {
         return this.§1;§;
      }
      
      public function set §[!@§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1;§ = param1;
         }
      }
      
      public function get isLocked() : Boolean
      {
         return this.§'!2§;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§'!2§ = param1;
            loop0:
            while(true)
            {
               this.§'!j§.visible = !this.isLocked;
               while(true)
               {
                  this.§##K§.txtLevelNumber.visible = !this.§'!2§;
                  loop2:
                  while(_loc3_)
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§"r§();
                        if(!(_loc2_ && _loc2_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public function get §?!N§() : int
      {
         return this.§@!#§;
      }
      
      public function set §?!N§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@!#§ = param1;
         }
         do
         {
            this.§##K§.txtUnlockAmount.text = this.§@!#§;
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function get canBuyToUnlock() : Boolean
      {
         return this.§5o§;
      }
      
      public function set canBuyToUnlock(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5o§ = param1;
            do
            {
               this.§##K§.txtUnlockAmount.visible = this.§5o§;
               do
               {
                  this.§"r§();
               }
               while(_loc2_ && this);
               
            }
            while(!_loc3_);
            
         }
      }
      
      private function §"r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§'!2§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  this.§##K§.gotoAndStop("unlocked");
                  loop1:
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              §§push(this.§0q§);
                              while(!§§pop())
                              {
                                 §§push(this.§5o§);
                                 if(!_loc1_)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                           continue loop0;
                           addr122:
                        }
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     while(true)
                     {
                        this.§##K§.gotoAndStop("unlocking");
                        addr129:
                        while(true)
                        {
                           addr50:
                           while(true)
                           {
                              continue loop1;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               §§goto(addr122);
            }
         }
         §§goto(addr71);
      }
      
      public function get §'#I§() : Boolean
      {
         return this.§0q§;
      }
      
      public function set §'#I§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0q§ = param1;
            do
            {
               this.§"r§();
            }
            while(_loc2_);
            
         }
      }
      
      public function get score() : int
      {
         return this.§,!D§;
      }
      
      public function set score(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§,!D§ = param1;
         }
         do
         {
            this.§'!j§.txtScore.text = this.§,!D§.toString();
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function get §[!F§() : int
      {
         return this.§4#<§;
      }
      
      public function set §[!F§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4#<§ = param1;
         }
         do
         {
            this.§##K§.levelStars.gotoAndStop(this.§4#<§.toString() + "_stars");
         }
         while(_loc2_);
         
      }
      
      public function get §9!<§() : int
      {
         return this.§8#-§;
      }
      
      public function set §9!<§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = null;
         if(_loc3_ || this)
         {
            this.§8#-§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§8#-§);
               loop1:
               while(true)
               {
                  §§push(0);
                  addr120:
                  while(true)
                  {
                     §§push(§§pop() > §§pop());
                     if(_loc3_ || _loc3_)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 _loc2_ = "noCrown";
                                 while(true)
                                 {
                                    this.§##K§.crown.gotoAndStop(_loc2_);
                                    if(!(_loc4_ && this))
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          break;
                                       }
                                       addr96:
                                       while(true)
                                       {
                                          _loc2_ = ["Gold","Silver","Bronze"][this.§8#-§ - 1];
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    addr115:
                                 }
                                 return;
                                 addr51:
                              }
                              §§goto(addr96);
                              addr86:
                              §§push(§§pop() <= §§pop());
                              if(!(_loc4_ && param1))
                              {
                                 continue;
                              }
                              addr140:
                              while(true)
                              {
                                 §§pop();
                                 continue loop1;
                              }
                              addr140:
                           }
                           addr94:
                        }
                     }
                     §§goto(addr140);
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function get §,Y§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(isNaN(this.§"!v§))
            {
               addr33:
               §§push(Number(NaN));
               if(_loc2_ && _loc1_)
               {
               }
            }
            else
            {
               return Number(Math.floor((this.§"!v§ - getTimer()) / 1000));
            }
            return §§pop();
         }
         §§goto(addr33);
      }
      
      public function §1Y§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
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
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || this)
                           {
                              this.§"!v§ = param1;
                           }
                           addr120:
                           if(_loc2_)
                           {
                              this.isLocked = true;
                              while(true)
                              {
                                 §§push(this.§&!;§);
                                 if(_loc3_ && _loc2_)
                                 {
                                    addr24:
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    return;
                                 }
                                 loop3:
                                 while(_loc2_)
                                 {
                                    this.§##K§.addEventListener(Event.ENTER_FRAME,this.§-!u§);
                                    while(true)
                                    {
                                       this.§&!;§ = true;
                                       addr55:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        this.isLocked = false;
                        if(_loc2_ || param1)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr55);
                     }
                     addr50:
                     §§goto(addr24);
                  }
               }
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §-!u§(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         §§push(this.§,Y§);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc6_ || _loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     this.isLocked = false;
                     loop2:
                     while(true)
                     {
                        this.§##K§.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
                        loop3:
                        while(_loc6_)
                        {
                           if(_loc6_)
                           {
                              if(!(_loc7_ && _loc2_))
                              {
                                 if(_loc6_)
                                 {
                                    this.§&!;§ = false;
                                    loop4:
                                    for(; !_loc7_; dispatchEvent(new Event(Event.CHANGE)),if(!(_loc7_ && _loc2_))
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop3;
                                    })
                                    {
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          continue;
                                       }
                                       loop34:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          if(_loc6_ || _loc2_)
                                          {
                                             addr405:
                                             §§push(0);
                                             if(!_loc7_)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   this.§##K§.unlockTimer.gotoAndStop("hours");
                                                   while(true)
                                                   {
                                                      this.§##K§.unlockTimer.txtTimer.visible = true;
                                                      while(true)
                                                      {
                                                         if(_loc6_ || param1)
                                                         {
                                                            §§push(_loc2_);
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(60);
                                                               loop8:
                                                               while(_loc6_ || _loc2_)
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§##K§.unlockTimer.txtTimer.text = _loc2_.toString() + " sec";
                                                                        addr345:
                                                                        §§goto(addr100);
                                                                     }
                                                                     addr336:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        §§push(60);
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc7_ && _loc2_))
                                                                           {
                                                                              if(!(_loc6_ || this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           continue loop8;
                                                                           addr160:
                                                                           if(!(_loc6_ || _loc3_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(60);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(§§pop() * (§§pop() * §§pop()));
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr187:
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          addr190:
                                                                                          §§push(60);
                                                                                          if(_loc6_ || _loc2_)
                                                                                          {
                                                                                             addr198:
                                                                                             §§push(§§pop() / §§pop());
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                addr205:
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   if(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      §§push(int(§§pop()));
                                                                                                      if(_loc7_ && _loc3_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc7_ && this))
                                                                                                            {
                                                                                                               if(!(_loc7_ && _loc3_))
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        if(!(_loc7_ && param1))
                                                                                                                        {
                                                                                                                           §§push(_loc2_);
                                                                                                                           if(_loc6_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(_loc4_);
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 §§goto(addr160);
                                                                                                                              }
                                                                                                                              §§goto(addr190);
                                                                                                                           }
                                                                                                                           §§goto(addr187);
                                                                                                                        }
                                                                                                                        loop31:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§##K§.unlockTimer.txtTimer.visible = false;
                                                                                                                           addr379:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc7_ && param1)
                                                                                                                              {
                                                                                                                                 loop19:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc6_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          break loop19;
                                                                                                                                       }
                                                                                                                                       addr417:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc2_);
                                                                                                                                          addr436:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             break loop8;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr425:
                                                                                                                                    }
                                                                                                                                    §§goto(addr405);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                    {
                                                                                                                                       break loop4;
                                                                                                                                    }
                                                                                                                                    addr387:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§##K§.unlockTimer.gotoAndStop("days_" + _loc3_);
                                                                                                                                       continue loop31;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr409:
                                                                                                                                 addr418:
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr336);
                                                                                                                     }
                                                                                                                     §§goto(addr100);
                                                                                                                  }
                                                                                                                  addr267:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  continue loop34;
                                                                                                               }
                                                                                                               addr443:
                                                                                                            }
                                                                                                            addr420:
                                                                                                            loop26:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               addr421:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr387);
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                         addr252:
                                                                                                      }
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         _loc5_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§##K§.unlockTimer.txtTimer.text = (_loc4_ < 10 ? "0" : "") + _loc4_ + ":" + (_loc5_ < 10 ? "0" : "") + _loc5_;
                                                                                                            break loop3;
                                                                                                         }
                                                                                                         addr242:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr417);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr443);
                                                                                                   }
                                                                                                   addr442:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(60);
                                                                                                   addr246:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      addr247:
                                                                                                      addr438:
                                                                                                      while(!_loc7_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            addr251:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr252);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr439:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * 24);
                                                                                                            addr441:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr442);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr205);
                                                                                                }
                                                                                                addr245:
                                                                                             }
                                                                                             §§goto(addr251);
                                                                                          }
                                                                                          §§goto(addr246);
                                                                                       }
                                                                                       §§goto(addr198);
                                                                                    }
                                                                                    §§goto(addr439);
                                                                                 }
                                                                                 §§goto(addr441);
                                                                              }
                                                                              §§goto(addr250);
                                                                           }
                                                                           §§goto(addr247);
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     §§goto(addr436);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr438);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr421);
                                                      }
                                                   }
                                                   addr371:
                                                }
                                                §§goto(addr409);
                                             }
                                             §§goto(addr418);
                                          }
                                          §§goto(addr420);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr420);
                                    }
                                 }
                                 §§goto(addr345);
                              }
                              §§goto(addr317);
                           }
                           §§goto(addr267);
                        }
                        while(true)
                        {
                           if(_loc7_ && param1)
                           {
                              continue;
                           }
                           if(!_loc6_)
                           {
                              §§goto(addr371);
                           }
                           else
                           {
                              addr147:
                           }
                           §§goto(addr100);
                        }
                        if(_loc6_ || param1)
                        {
                           break loop1;
                        }
                     }
                  }
                  §§goto(addr425);
               }
               addr100:
               while(_loc7_)
               {
                  continue loop6;
               }
               addr100:
               return;
            }
         }
         §§goto(addr147);
      }
      
      public function §6!@§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§##K§.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
            loop0:
            while(true)
            {
               this.§&!;§ = false;
               if(_loc2_ && _loc3_)
               {
                  break;
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               loop1:
               while(true)
               {
                  §§push(this.§]k§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           addr43:
                           this.§]k§.stop();
                           if(_loc3_)
                           {
                              addr56:
                              while(true)
                              {
                                 this.§]k§ = null;
                                 if(!_loc2_)
                                 {
                                    if(true)
                                    {
                                       this.§##K§.scaleX = this.§##K§.scaleY = this.§,c§;
                                    }
                                    else
                                    {
                                       addr84:
                                    }
                                    continue loop1;
                                    break loop0;
                                 }
                                 break loop0;
                              }
                              addr56:
                           }
                           break loop0;
                        }
                        §§goto(addr56);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr43);
               }
            }
            return;
         }
         §§goto(addr56);
      }
   }
}
