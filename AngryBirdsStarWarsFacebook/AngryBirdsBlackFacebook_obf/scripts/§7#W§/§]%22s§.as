package §7#W§
{
   import §"a§.§6#!§;
   import §+D§.§ #^§;
   import §,"N§.§?v§;
   import §,"N§.§@#B§;
   import §,"N§.§@>§;
   import §8!E§.§^![§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §]"s§ extends §^![§
   {
       
      
      private var §!!<§:MovieClip;
      
      private var §9"s§:MovieClip;
      
      public function §]"s§(param1:§ #^§, param2:§+"2§, param3:§6#!§, param4:§@>§, param5:§5"H§)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override protected function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.init();
            while(true)
            {
               this.§!!<§ = §=#=§.getItemByName("LastCrystalActivated").mClip;
               addr38:
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               if(false)
               {
                  while(true)
                  {
                     this.§9"s§ = §=#=§.getItemByName("CrystalBreakAnimation").mClip;
                     do
                     {
                        this.§9"s§.visible = false;
                     }
                     while(_loc3_ && this);
                     
                     if(_loc3_)
                     {
                        break;
                     }
                     §§goto(addr38);
                  }
                  while(!(_loc3_ && _loc1_))
                  {
                     §§goto(addr47);
                  }
                  addr47:
                  while(true)
                  {
                     this.§!!<§.visible = false;
                     §§goto(addr70);
                  }
                  addr70:
                  addr85:
               }
               var _loc1_:§?v§ = §@#B§(§4#;§.singleton.dataModel).§^"J§;
               if(!_loc3_)
               {
                  if(!_loc1_.§3!@§)
                  {
                     if(_loc2_)
                     {
                        addr131:
                        this.§!2§();
                     }
                     while(_loc1_.energy == 0)
                     {
                        if(_loc2_)
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           this.§`"L§();
                        }
                        break;
                     }
                  }
                  return;
               }
               §§goto(addr131);
            }
         }
         §§goto(addr85);
      }
      
      override public function enable(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.enable(param1);
            loop0:
            while(true)
            {
               §>M§ = true;
               while(true)
               {
                  §0#,§.active = false;
                  loop2:
                  while(!_loc2_)
                  {
                     §0#,§.enabled = false;
                     while(true)
                     {
                        §0#,§.visible = false;
                        loop4:
                        while(!(_loc2_ && _loc2_))
                        {
                           while(true)
                           {
                              §0!`§.view.x = §#"$§;
                              while(_loc3_)
                              {
                                 §4"v§.x = §#"$§;
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       continue loop0;
                                    }
                                    continue loop4;
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      override protected function getLevelLoadStateName() : String
      {
         return §2O§.§^!7§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§!!<§ = null;
            do
            {
               this.§9"s§ = null;
               do
               {
                  super.dispose();
               }
               while(_loc2_);
               
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      private function §`"L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§!!<§)
            {
               loop0:
               while(true)
               {
                  this.§!!<§.gotoAndPlay(1);
                  while(true)
                  {
                     this.§!!<§.visible = true;
                     loop2:
                     while(_loc2_ || _loc2_)
                     {
                        while(true)
                        {
                           this.§!!<§.addEventListener(Event.ENTER_FRAME,this.§-"l§);
                           if(!_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        return;
                     }
                  }
               }
            }
            §§goto(addr25);
         }
         §§goto(addr74);
      }
      
      private function §!2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§9"s§.gotoAndPlay(1);
            while(true)
            {
               §@!m§(§4#;§.singleton).§""s§.§%!r§();
            }
            addr87:
         }
         while(true)
         {
            this.§9"s§.visible = true;
            for(; !_loc1_; this.§9"s§.addEventListener(Event.ENTER_FRAME,this.§6!M§),if(!(_loc1_ && _loc1_))
            {
               return;
            })
            {
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr87);
            }
         }
      }
      
      private function §-"l§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§!!<§)
            {
               loop0:
               while(this.§!!<§.currentFrame == this.§!!<§.totalFrames - 1)
               {
                  if(!_loc2_)
                  {
                     while(true)
                     {
                        this.§!!<§.stop();
                     }
                     addr83:
                  }
                  while(true)
                  {
                     this.§!!<§.visible = false;
                     while(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           this.§!!<§.removeEventListener(Event.ENTER_FRAME,this.§-"l§);
                           if(!(_loc2_ && this))
                           {
                              break loop0;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr83);
      }
      
      private function §6!M§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§9"s§)
            {
               if(_loc2_ || _loc2_)
               {
                  if(this.§9"s§.currentFrame == this.§9"s§.totalFrames - 1)
                  {
                     loop0:
                     while(true)
                     {
                        this.§9"s§.stop();
                        addr95:
                        addr50:
                        while(true)
                        {
                           this.§9"s§.visible = false;
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr95);
            }
            return;
         }
         §§goto(addr95);
      }
   }
}
