package §%w§
{
   import §#!F§.§'^§;
   import §#!V§.§&!!§;
   import §&!7§.§,!A§;
   import §&p§.§9!H§;
   import §,j§.§"!F§;
   import §,j§.§0!@§;
   import §,j§.§1-§;
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §0F§.§0p§;
   import §1§.§&!3§;
   import §1§.§'n§;
   import §1§.§;d§;
   import §6v§.§>S§;
   import §?m§.§7?§;
   import §@!?§.§0!U§;
   import §]!F§.§7e§;
   import §`C§.§9!'§;
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §`L§ extends §;s§
   {
      
      public static const §9!P§:String = "LevelSelectionState";
      
      private static const §,_§:Number = 0.5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §9!P§ = "LevelSelectionState";
         }
         do
         {
            §,_§ = 0.5;
         }
         while(!(_loc1_ || §`L§));
         
      }
      
      private var §0!_§:Boolean = false;
      
      private var §!8§:MovieClip;
      
      private var §-!Y§:Array;
      
      private var §3H§:Array;
      
      private var §[!1§:int = 0;
      
      private var §4,§:Boolean = false;
      
      private var §0!0§:§&!!§ = null;
      
      private var §]^§:String;
      
      private var §+!P§:Dictionary;
      
      private var §4!^§:Array;
      
      private var §-h§:Boolean = false;
      
      private var §,C§:Array;
      
      private var §-!S§:Boolean = false;
      
      private var §[L§:Boolean = false;
      
      private var §-!<§:Number = 0;
      
      private var §55§:Number = 0;
      
      private var §1c§:Number = 0;
      
      private var §[!#§:Number = 0;
      
      private var §"W§:Number;
      
      private var §?v§:Number;
      
      private var §4B§:Number;
      
      private var §5!!§:Number;
      
      public function §`L§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
            loop0:
            while(true)
            {
               §3t§ = new §'j§(this);
               addr177:
               while(true)
               {
                  §3t§.init(§0p§.§'! §.Views.View_LevelSelection[0]);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§!8§ = new MovieClip();
            §§goto(addr143);
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activate();
         }
         loop0:
         while(true)
         {
            §§push(§9!'§.§7!Z§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc1_)
                  {
                     addr104:
                     §9!'§.§7!Z§.stop();
                  }
                  while(true)
                  {
                  }
                  addr105:
               }
               while(true)
               {
                  §§push(this.§-h§);
                  if(_loc3_ || this)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §7?§.§4!H§.§'![§(false);
                           loop7:
                           while(_loc3_ || _loc1_)
                           {
                              addr43:
                              if(_loc3_ || this)
                              {
                                 this.§]!§();
                                 if(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop0;
                                 }
                                 continue;
                              }
                              addr85:
                              while(true)
                              {
                                 this.§-h§ = true;
                                 break loop7;
                                 §§goto(addr43);
                              }
                           }
                           while(true)
                           {
                              §'^§.§`0§(§'^§.§"'§);
                              continue loop0;
                           }
                        }
                        continue;
                        addr31:
                     }
                     §§goto(addr85);
                  }
                  break;
               }
               §§goto(addr114);
               §§push(Boolean(§§pop()));
            }
            §§goto(addr104);
         }
      }
      
      override public function activateComplete() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.activateComplete();
         }
      }
      
      private function §2,§(param1:FocusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §3t§.setText("","TextField_Code");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = super.run(param1);
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_ || param1)
            {
               if(§§pop() == §&c§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     if(mNextState.length <= 0)
                     {
                        while(true)
                        {
                           this.§4B§ = §3t§.getItemByName("Button_LeftMenuOpen").y - 50;
                           while(!(_loc3_ && _loc2_))
                           {
                              if(!_loc3_)
                              {
                                 this.§5!!§ = §3t§.getItemByName("Button_RightMenuOpen").y - 50;
                                 loop3:
                                 for(; _loc4_; while(true)
                                 {
                                    this.§7F§(param1);
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 },return §&c§.STATE_STATUS_RUNNING)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc3_ && param1)
                                       {
                                          return _loc2_;
                                       }
                                       addr118:
                                       continue;
                                    }
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                        }
                     }
                     return §&c§.STATE_STATUS_COMPLETED;
                  }
               }
            }
            §§goto(addr118);
         }
         §§goto(addr68);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§-!S§ = false;
            loop0:
            while(true)
            {
               this.§[L§ = false;
               loop1:
               while(true)
               {
                  this.§1c§ = 0;
                  loop2:
                  while(true)
                  {
                     this.§[!#§ = 0;
                     loop3:
                     for(; !_loc1_; while(_loc2_ || _loc2_)
                     {
                        super.deActivate();
                        §§goto(addr44);
                     })
                     {
                        this.§55§ = 0;
                        loop4:
                        while(true)
                        {
                           this.§-!<§ = 0;
                           while(true)
                           {
                              (§3t§.getItemByName("Container_MenuLeftButtons") as §1-§).setVisibility(false);
                              addr58:
                              if(_loc2_ || _loc1_)
                              {
                                 this.§9_§();
                                 addr75:
                                 if(_loc1_)
                                 {
                                    while(true)
                                    {
                                       if(_loc1_ && this)
                                       {
                                          continue loop3;
                                       }
                                       addr51:
                                       if(_loc1_ && this)
                                       {
                                          while(true)
                                          {
                                             (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).setVisibility(false);
                                             continue loop3;
                                             §§goto(addr51);
                                          }
                                          return;
                                          addr40:
                                          addr100:
                                       }
                                       §§goto(addr58);
                                       §§goto(addr75);
                                    }
                                    continue;
                                    addr44:
                                 }
                                 if(!_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr100);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'n§) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1490
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private function §each §(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!§9!H§.§[R§(param1))
            {
               if(_loc2_)
               {
                  §7e§.§!!@§(param1.toLowerCase());
               }
            }
         }
      }
      
      public function §]!§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Array = null;
         var _loc1_:* = Number(0);
         if(_loc4_)
         {
            this.§4!^§ = [];
            if(!(_loc5_ && _loc3_))
            {
               this.§[!1§ = §7e§.§2§(§7e§.§]!U§).currentPage;
            }
         }
         var _loc2_:* = Number(0);
         while(_loc2_ < §7e§.§2§(§7e§.§]!U§).pageIndexes.length)
         {
            _loc3_ = §7e§.§2§(§7e§.§]!U§).§4!=§(§7e§.§2§(§7e§.§]!U§).pageIndexes[_loc2_]);
            if(!(_loc5_ && _loc1_))
            {
               this.§4!^§.push(§7e§.§2§(§7e§.§]!U§).§5Z§(_loc2_));
               loop1:
               while(true)
               {
                  addr115:
                  while(true)
                  {
                     §§push(this.§?!,§(_loc3_,_loc1_));
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                     }
                     loop3:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!(_loc5_ && _loc1_))
                           {
                              continue loop3;
                           }
                           addr103:
                           _loc2_ = §§pop();
                           if(_loc4_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr115);
            }
         }
      }
      
      private function §?!,§(param1:Array, param2:Number) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:§0!@§ = null;
         var _loc6_:* = false;
         var _loc7_:* = NaN;
         if(!(_loc8_ && this))
         {
            this.§,C§ = [];
         }
         var _loc3_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc9_)
            {
               if(§§pop() >= param1.length)
               {
                  if(_loc9_)
                  {
                     §§push(param2);
                     if(!(_loc8_ && param2))
                     {
                        §§push(§§pop() + §#x§.§;#§);
                        if(_loc9_)
                        {
                           break;
                        }
                     }
                     addr216:
                     param2 = §§pop();
                  }
               }
               else
               {
                  _loc4_ = param1[_loc3_];
                  if(!_loc8_)
                  {
                     _loc5_ = §3t§.getItemByName("LevelButton" + (_loc3_ + 1)) as §0!@§;
                     if(!(_loc8_ && _loc3_))
                     {
                        this.§,C§[_loc3_] = _loc5_;
                        loop1:
                        while(true)
                        {
                           §§push(§9!H§.§[R§(_loc4_));
                           if(_loc9_ || param2)
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc8_ && param2))
                              {
                                 §§push(_loc6_ = §§pop());
                              }
                           }
                           if(§§pop())
                           {
                              _loc5_.setComponentState(§&!3§.§#!$§);
                              loop9:
                              while(true)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(Number(§#x§.§[Y§.§try §(_loc4_)));
                                    loop5:
                                    while(true)
                                    {
                                       _loc7_ = §§pop();
                                       loop6:
                                       while(_loc9_)
                                       {
                                          loop7:
                                          do
                                          {
                                             _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
                                             while(true)
                                             {
                                                if(_loc8_ && param2)
                                                {
                                                   continue loop9;
                                                }
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc9_)
                                                      {
                                                         if(_loc8_ && this)
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§push(§§pop() + 1);
                                                         if(_loc9_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      _loc3_ = §§pop();
                                                      if(!_loc8_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop1;
                                                }
                                                addr170:
                                                while(true)
                                                {
                                                   continue loop4;
                                                }
                                             }
                                             continue loop9;
                                          }
                                          while(false);
                                          
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              addr143:
                           }
                           while(true)
                           {
                              _loc5_.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              §§goto(addr170);
                           }
                        }
                     }
                     §§goto(addr143);
                  }
               }
               §§goto(addr218);
            }
            break;
         }
         §§push(Number(§§pop()));
         if(!(_loc8_ && _loc3_))
         {
            §§goto(addr216);
         }
         addr218:
         return param2;
      }
      
      private function §9_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(true)
         {
            if(this.§!8§.numChildren <= 0)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§3H§ = [];
               }
               if(_loc2_ || _loc2_)
               {
                  break;
               }
            }
            else
            {
               this.§!8§.removeChildAt(0);
            }
         }
      }
      
      private function §=!J§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mNextState = §`L§.§9!P§;
         }
      }
      
      private function §7F§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§3t§.getItemByName("Container_MenuLeftButtons") as §1-§).mClip.scrollRect = new Rectangle(0,0,(§3t§.getItemByName("Container_MenuLeftButtons") as §1-§).width,this.§"W§ + 20 - (this.§"W§ - this.§1c§));
            loop0:
            while(true)
            {
               (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).mClip.scrollRect = new Rectangle(0,0,(§3t§.getItemByName("Container_MenuRightButtons") as §1-§).width,this.§?v§ + 20 - (this.§?v§ - this.§[!#§));
               while(true)
               {
                  §§push(this.§-!S§);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(this.§-!<§);
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
                                    §§push(this.§-!<§);
                                    if(_loc3_)
                                    {
                                       §§push(0.3);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§pop().§-!<§ = §§pop();
                                    addr722:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr705:
                              }
                              while(true)
                              {
                                 §§push(this.§-!<§);
                                 loop8:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(0);
                                       loop9:
                                       while(true)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             while(true)
                                             {
                                                this.§-!<§ = 0;
                                                addr695:
                                                while(_loc3_)
                                                {
                                                }
                                                §§goto(addr722);
                                             }
                                             addr692:
                                          }
                                          while(true)
                                          {
                                             §§push(this.§1c§);
                                             loop13:
                                             while(true)
                                             {
                                                §§push(0);
                                                loop14:
                                                while(true)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§1c§);
                                                         if(!(_loc2_ && this))
                                                         {
                                                            §§push(0.5);
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§pop() * param1);
                                                            }
                                                            §§push(§§pop() - §§pop());
                                                         }
                                                         §§pop().§1c§ = §§pop();
                                                         addr684:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr667:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§1c§);
                                                      loop18:
                                                      while(true)
                                                      {
                                                         if(!(_loc2_ && this))
                                                         {
                                                            §§push(0);
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               continue loop14;
                                                               addr311:
                                                               if(!(_loc3_ || param1))
                                                               {
                                                                  continue;
                                                               }
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  loop63:
                                                                  while(true)
                                                                  {
                                                                     this.§55§ = 0;
                                                                     loop58:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              if(_loc3_ || param1)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§[!#§);
                                                                                    loop60:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       loop57:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   continue loop58;
                                                                                                }
                                                                                                addr268:
                                                                                                §§push(this);
                                                                                                §§push(this.§[!#§);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(0.5);
                                                                                                   if(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() * param1);
                                                                                                   }
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                }
                                                                                                §§pop().§[!#§ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr268);
                                                                                                }
                                                                                             }
                                                                                             addr266:
                                                                                          }
                                                                                          loop56:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§[!#§);
                                                                                             if(_loc2_ && _loc2_)
                                                                                             {
                                                                                                continue loop60;
                                                                                             }
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      if(!(_loc2_ && this))
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            continue loop57;
                                                                                                         }
                                                                                                         if(!(_loc2_ && param1))
                                                                                                         {
                                                                                                            if(§§pop() < §§pop())
                                                                                                            {
                                                                                                               loop54:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).setVisibility(false);
                                                                                                                     loop62:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc2_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              if(!(_loc2_ && _loc2_))
                                                                                                                              {
                                                                                                                                 this.§[!#§ = 0;
                                                                                                                                 addr187:
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    addr189:
                                                                                                                                    if(!(_loc2_ && param1))
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          loop48:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             (§3t§.getItemByName("Button_LeftMenuOpen") as §0!@§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                                                                             loop49:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      (§3t§.getItemByName("Button_RightMenuOpen") as §0!@§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                                                                                      loop50:
                                                                                                                                                      while(!_loc2_)
                                                                                                                                                      {
                                                                                                                                                         (§3t§.getItemByName("Button_LeftMenuOpen") as §0!@§).mClip.MovieClip_LeftMenuImage.rotation = this.§-!<§;
                                                                                                                                                         loop51:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  (§3t§.getItemByName("Button_RightMenuOpen") as §0!@§).mClip.MovieClip_RightMenuImage.rotation = this.§55§;
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop51;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop49;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop54;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc2_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop63;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§3t§.getItemByName("Container_MenuLeftButtons") as §1-§);
                                                                                                                                                                              §§push(this.§4B§);
                                                                                                                                                                              if(_loc3_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - this.§1c§);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr375:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                    §§push(this.§55§);
                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0.5);
                                                                                                                                                                                       if(_loc3_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * param1);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().§55§ = §§pop();
                                                                                                                                                                                    addr392:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc3_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc2_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc3_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).y = (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).y + 0.5 * param1;
                                                                                                                                                                                                loop32:
                                                                                                                                                                                                while(!_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§55§);
                                                                                                                                                                                                         addr289:
                                                                                                                                                                                                         loop67:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc3_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop3;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            loop46:
                                                                                                                                                                                                            for(; _loc3_; continue loop67)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§?v§);
                                                                                                                                                                                                               if(!_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.§[!#§ = this.§?v§;
                                                                                                                                                                                                                           addr430:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc3_ || _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.§-!<§ = 90;
                                                                                                                                                                                                                                    break loop32;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr779:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr447:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr426:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop48;
                                                                                                                                                                                                                        §§goto(addr447);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  loop80:
                                                                                                                                                                                                                  while(!(_loc2_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.§1c§ = this.§"W§;
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr742:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr815:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 (§3t§.getItemByName("Container_MenuLeftButtons") as §1-§).setVisibility(true);
                                                                                                                                                                                                                                 addr822:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§-!<§);
                                                                                                                                                                                                                                    addr786:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(90);
                                                                                                                                                                                                                                       addr787:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                                                                §§push(this.§-!<§);
                                                                                                                                                                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(0.3);
                                                                                                                                                                                                                                                   if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * param1);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().§-!<§ = §§pop();
                                                                                                                                                                                                                                                addr810:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr788:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§-!<§);
                                                                                                                                                                                                                                             addr777:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(90);
                                                                                                                                                                                                                                                addr778:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr779);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr743:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§1c§);
                                                                                                                                                                                                                                                      addr746:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§"W§);
                                                                                                                                                                                                                                                         break loop80;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr815:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr736:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop2;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this);
                                                                                                                                                                                                                           §§push(this.§1c§);
                                                                                                                                                                                                                           if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(0.5);
                                                                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * param1);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().§1c§ = §§pop();
                                                                                                                                                                                                                           addr766:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc2_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§1c§);
                                                                                                                                                                                                                                    addr726:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr728);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr723:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr810);
                                                                                                                                                                                                                              addr599:
                                                                                                                                                                                                                              while(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§55§);
                                                                                                                                                                                                                                 break loop56;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr749:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr723);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr728:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr455:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this);
                                                                                                                                                                                                                           §§push(this.§[!#§);
                                                                                                                                                                                                                           if(!(_loc2_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(0.5);
                                                                                                                                                                                                                              if(_loc3_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * param1);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().§[!#§ = §§pop();
                                                                                                                                                                                                                           break loop54;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr456:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr414:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop46;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr455:
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop8;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr286:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                break loop49;
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr743);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr356:
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr692);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§[!#§);
                                                                                                                                                                                                   addr451:
                                                                                                                                                                                                   while(_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr455);
                                                                                                                                                                                                      §§push(this.§?v§);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr482:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop13;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop18;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr746);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr788);
                                                                                                                                                                                             addr514:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr455);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr426);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr705);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr695);
                                                                                                                                                                        }
                                                                                                                                                                        (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).y = (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).y - 0.5 * param1;
                                                                                                                                                                        break loop49;
                                                                                                                                                                        addr580:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr392);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop54;
                                                                                                                                                               }
                                                                                                                                                               continue loop62;
                                                                                                                                                            }
                                                                                                                                                            continue loop50;
                                                                                                                                                         }
                                                                                                                                                         continue loop62;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr266);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr430);
                                                                                                                                                }
                                                                                                                                                §§goto(addr356);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr482);
                                                                                                                                                      }
                                                                                                                                                      addr479:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr736);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr815);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr599);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr611:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop2;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr163:
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc3_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          this.§1c§ = 0;
                                                                                                                                          §§goto(addr611);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr749);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr654:
                                                                                                                                 }
                                                                                                                                 addr551:
                                                                                                                                 if(_loc3_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(this.§55§);
                                                                                                                                    if(_loc3_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(0.5);
                                                                                                                                       if(!(_loc2_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * param1);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    §§pop().§55§ = §§pop();
                                                                                                                                    §§goto(addr580);
                                                                                                                                 }
                                                                                                                                 §§goto(addr742);
                                                                                                                              }
                                                                                                                              §§goto(addr822);
                                                                                                                           }
                                                                                                                           break loop54;
                                                                                                                        }
                                                                                                                        §§goto(addr285);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr684);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr414);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr163);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc3_ || this)
                                                                                                               {
                                                                                                                  §§goto(addr311);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc2_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(§§pop() > §§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr375);
                                                                                                                        }
                                                                                                                        §§goto(addr286);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc2_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(!(_loc2_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                 {
                                                                                                                                    break loop57;
                                                                                                                                 }
                                                                                                                                 §§goto(addr448);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           addr550:
                                                                                                                           while(§§pop() >= §§pop())
                                                                                                                           {
                                                                                                                           }
                                                                                                                           §§goto(addr551);
                                                                                                                        }
                                                                                                                        §§goto(addr787);
                                                                                                                        addr496:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr367:
                                                                                                               }
                                                                                                            }
                                                                                                            addr304:
                                                                                                         }
                                                                                                         §§goto(addr479);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr451);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                   addr366:
                                                                                                }
                                                                                                §§goto(addr367);
                                                                                             }
                                                                                             §§goto(addr289);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr550);
                                                                                          }
                                                                                       }
                                                                                       addr511:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§55§ = 180;
                                                                                          §§goto(addr514);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr259:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    (§3t§.getItemByName("Container_MenuRightButtons") as §1-§).setVisibility(true);
                                                                                 }
                                                                                 addr592:
                                                                              }
                                                                              §§goto(addr599);
                                                                           }
                                                                           §§goto(addr511);
                                                                        }
                                                                        §§goto(addr456);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            continue loop9;
                                                         }
                                                         §§goto(addr777);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr726);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr815);
                  }
                  while(!(_loc2_ && this))
                  {
                     (§3t§.getItemByName("Container_MenuLeftButtons") as §1-§).setVisibility(false);
                     §§goto(addr654);
                  }
               }
            }
         }
         §§goto(addr611);
      }
      
      public function refreshSession() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var callObject:Object = null;
         try
         {
            callObject = {
               "type":§>S§.§<!0§,
               "sessionID":§>S§.§9J§(),
               "userID":§9!H§.§ o§.name
            };
            if(!(_loc4_ && _loc2_))
            {
               new §>S§(callObject,§#x§.§<!0§,this,§>S§.§"!H§);
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}
