package §'!s§
{
   import §#^§.§7!A§;
   import §-!+§.§5!!§;
   import §-!h§.§5Q§;
   import §4!e§.§6Y§;
   import com.rovio.assets.§8B§;
   import com.rovio.ui.setTint;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.TextField;
   
   public class §+!4§ extends Popup
   {
      
      public static const §%@§:int = 50;
      
      public static var §0!W§:int = 10;
      
      public static const §2^§:String = "Requests sent";
      
      public static const § ",§:String = "Friends selected";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §%@§ = 50;
         }
         loop0:
         while(true)
         {
            §0!W§ = 10;
            do
            {
               §2^§ = "Requests sent";
               continue loop0;
            }
            while(_loc2_);
            
            return;
         }
      }
      
      private const §@!E§:uint = 10066329;
      
      private const §?!t§:Number = 0.5;
      
      private var §`!E§:int = 0;
      
      private var §""A§:Array;
      
      private var §9t§:§5!!§;
      
      private var §7!o§:§6Y§;
      
      protected var §;L§:int;
      
      protected var §8! §:int;
      
      protected var §&v§:int;
      
      public function §+!4§(param1:XML, param2:§7!A§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param2);
         }
         loop0:
         while(true)
         {
            mClip.CheckAnimation.gotoAndStop(0);
            loop1:
            while(true)
            {
               addr45:
               while(true)
               {
                  mClip.inviteScrollbar.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§[9§);
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      public function get §"n§() : int
      {
         return this.§&v§;
      }
      
      public function set §"n§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§&v§ = param1;
         }
      }
      
      private function §[9§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§9t§.scroll(-4);
            do
            {
               this.§"=§();
            }
            while(!_loc3_);
            
         }
      }
      
      private function §6&§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§9t§.scroll(4);
            do
            {
               this.§"=§();
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      private function §"=§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§9t§);
            loop0:
            while(true)
            {
               §§push(1);
               addr118:
               while(true)
               {
                  if(§§pop().§@!%§(§§pop()))
                  {
                     addr120:
                     while(true)
                     {
                        this.§[p§(mClip.inviteScrollbar.btnScrollDown,true);
                        addr126:
                        while(true)
                        {
                           continue loop0;
                        }
                     }
                     addr120:
                  }
                  else
                  {
                     this.§[p§(mClip.inviteScrollbar.btnScrollDown,false);
                     while(true)
                     {
                        continue loop0;
                     }
                     addr114:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      private function §[p§(param1:SimpleButton, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param2)
            {
               if(!_loc4_)
               {
                  if(param1.mouseEnabled)
                  {
                     addr101:
                     param1.mouseEnabled = false;
                     setTint(param1,this.§@!E§,this.§?!t§);
                     addr104:
                  }
                  §§goto(addr19);
               }
               §§goto(addr104);
            }
            else if(!param1.mouseEnabled)
            {
               if(_loc3_ || param2)
               {
                  if(!(_loc4_ && param2))
                  {
                     param1.mouseEnabled = true;
                     do
                     {
                        setTint(param1,0,0);
                     }
                     while(_loc4_ && this);
                     
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr19);
                        }
                        else
                        {
                           §§goto(addr104);
                        }
                     }
                     §§goto(addr104);
                     addr84:
                  }
                  else
                  {
                     §§goto(addr101);
                  }
                  §§goto(addr101);
               }
               §§goto(addr84);
            }
            addr19:
            return;
         }
         §§goto(addr101);
      }
      
      protected function checkIfBatchInProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§&v§ <= 0)
            {
               mClip.btnInviteMore.visible = false;
               loop0:
               while(_loc1_)
               {
                  mClip.btnInvite.visible = true;
                  if(_loc1_ || _loc1_)
                  {
                     if(!(_loc1_ || _loc1_))
                     {
                        loop1:
                        while(true)
                        {
                           mClip.btnInvite.visible = false;
                           break loop0;
                           addr90:
                           while(true)
                           {
                              mClip.btnInviteMore.visible = true;
                              continue loop1;
                           }
                        }
                        addr85:
                     }
                     else
                     {
                        addr67:
                     }
                     return;
                  }
               }
               while(true)
               {
                  if(_loc2_)
                  {
                     §§goto(addr90);
                  }
                  §§goto(addr85);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr67);
      }
      
      private function §&"9§(param1:FocusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(TextField(mClip.searchbar).text == "Search...")
            {
               if(_loc2_)
               {
                  addr42:
                  TextField(mClip.searchbar).text = "";
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      private function §"H§(param1:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:Object = null;
         var _loc2_:String = TextField(mClip.searchbar).text;
         if(!_loc8_)
         {
            if(_loc2_ == "")
            {
               if(_loc7_)
               {
                  this.§,G§(this.finalPlayerList);
                  addr33:
               }
            }
            var _loc3_:Array = [];
            for each(_loc4_ in this.finalPlayerList)
            {
               if(_loc4_.name.toLowerCase().indexOf(_loc2_.toLowerCase()) != -1)
               {
                  if(!(_loc8_ && _loc3_))
                  {
                     _loc3_.push(_loc4_);
                  }
               }
            }
            if(!_loc8_)
            {
               this.§,G§(_loc3_);
            }
            return;
         }
         §§goto(addr33);
      }
      
      private function §<!C§(param1:Event) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         for each(_loc2_ in this.§""A§)
         {
            if(!_loc9_)
            {
               var _loc6_:int = 0;
               if(!(_loc9_ && _loc3_))
               {
                  for each(_loc3_ in _loc2_)
                  {
                     if(!_loc9_)
                     {
                        if(_loc3_)
                        {
                           if(_loc8_ || _loc2_)
                           {
                              _loc3_.selected = this.§7!o§.selected;
                           }
                        }
                     }
                  }
               }
            }
         }
         if(_loc8_ || this)
         {
            this.§><§();
            do
            {
               this.§9t§.§7C§();
            }
            while(!(_loc8_ || param1));
            
         }
      }
      
      protected function §><§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         if(!_loc6_)
         {
            this.§9t§.§7C§();
         }
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.finalPlayerList)
         {
            if(!_loc6_)
            {
               if(_loc2_.selected)
               {
                  if(!_loc6_)
                  {
                     _loc1_++;
                  }
               }
            }
         }
         if(!(_loc6_ && _loc3_))
         {
            §§push(_loc1_);
            loop1:
            while(true)
            {
               §§push(0);
               loop2:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     this.setSendButtonsVisibility(true);
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           this.§`!E§ = _loc1_;
                           loop5:
                           while(true)
                           {
                              if(this.§""A§.length != 0)
                              {
                                 this.noFriendsMessage.visible = false;
                                 loop6:
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§;L§);
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(0);
                                          if(_loc5_)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   continue loop6;
                                                }
                                                addr126:
                                                while(_loc5_)
                                                {
                                                   do
                                                   {
                                                      this.§"=§();
                                                   }
                                                   while(!_loc5_);
                                                   
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      return;
                                                   }
                                                   break loop6;
                                                }
                                                continue;
                                                addr126:
                                             }
                                             else
                                             {
                                                this.showFriendsCount(_loc1_,this.finalPlayerList.length);
                                             }
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr99);
                                                }
                                                else
                                                {
                                                   §§goto(addr126);
                                                }
                                             }
                                             continue loop5;
                                          }
                                          continue loop2;
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr161);
                                 }
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                                 addr180:
                              }
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    this.noFriendsMessage.visible = true;
                                    §§goto(addr161);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.setSendButtonsVisibility(false);
                                    }
                                    addr177:
                                 }
                                 §§goto(addr180);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr177);
               }
            }
         }
         §§goto(addr161);
      }
      
      protected function setSendButtonsVisibility(param1:Boolean) : void
      {
      }
      
      protected function get noFriendsMessage() : MovieClip
      {
         return null;
      }
      
      protected function showRequestsCount(param1:int, param2:int) : void
      {
      }
      
      protected function showFriendsCount(param1:int, param2:int) : void
      {
      }
      
      private function §5m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§9t§ = new §5!!§(600,200,null,§5Q§,20,20);
            while(true)
            {
               §§push(this.§9t§);
               loop1:
               while(true)
               {
                  §§pop().scrollerSprite.addEventListener(MouseEvent.CLICK,this.§6"4§);
                  addr105:
                  while(true)
                  {
                     §§push(this.§9t§);
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§9t§);
            if(!_loc2_)
            {
               §§pop().scrollerSprite.y = 290;
               while(!_loc2_)
               {
                  mClip.addChild(this.§9t§.scrollerSprite);
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  §§goto(addr41);
               }
               §§goto(addr105);
            }
            §§goto(addr73);
         }
         §§goto(addr58);
      }
      
      private function §,G§(param1:Array) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§""A§ = [];
         }
         var _loc2_:* = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  if(§§pop() >= param1.length)
                  {
                     do
                     {
                        this.§9t§.data = this.§""A§;
                        do
                        {
                           this.§><§();
                        }
                        while(!(_loc3_ || _loc3_));
                        
                     }
                     while(_loc4_);
                     
                     if(_loc3_)
                     {
                        break;
                     }
                     loop3:
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           _loc2_ = §§pop();
                           continue loop3;
                        }
                     }
                     continue;
                  }
                  this.§""A§.push([param1[_loc2_],param1[_loc2_ + 1]]);
                  while(true)
                  {
                     §§push(_loc2_);
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr83);
         }
      }
      
      private function §6"4§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§><§();
         }
      }
      
      protected function filterFriendsToShow(param1:Array) : void
      {
      }
      
      protected function get facebookGraphCall() : String
      {
         return "";
      }
      
      protected function fetchFriendData() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            mClip.WaitingForReply.visible = true;
         }
         var _loc1_:URLRequest = §3T§.§67§.§7!>§.§@8§(this.facebookGraphCall);
         var _loc2_:URLLoader = new URLLoader(_loc1_);
         if(_loc3_ || this)
         {
            _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
            do
            {
               _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            }
            while(_loc4_);
            
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:Object = null;
         if(_loc8_)
         {
            mClip.WaitingForReply.visible = false;
         }
         var _loc2_:Object = JSON.parse(param1.target.data);
         var _loc3_:Array = _loc2_.data;
         for each(_loc4_ in _loc3_)
         {
            _loc4_.selected = false;
         }
         if(!(_loc7_ && param1))
         {
            this.§%!,§(_loc3_);
         }
      }
      
      protected function §%!,§(param1:Array, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.filterFriendsToShow(param1);
            loop0:
            while(true)
            {
               if(param2)
               {
                  continue;
               }
               loop3:
               while(true)
               {
                  this.§8! § = Math.max(this.finalPlayerList.length,this.§8! §);
                  addr69:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  addr87:
                  while(true)
                  {
                     continue loop3;
                  }
               }
            }
         }
         while(true)
         {
            this.§,G§(this.finalPlayerList);
            if(!(_loc3_ && param1))
            {
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr87);
            }
            §§goto(addr69);
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
      
      private function §5!h§(param1:Array, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:int = 0;
         var _loc3_:Array = [];
         if(!(_loc5_ && param1))
         {
            param2 = Math.min(param1.length,param2);
         }
         while(true)
         {
            if(_loc3_.length >= param2)
            {
               if(!_loc5_)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     break;
                  }
                  while(true)
                  {
                     param1[_loc4_].selected = true;
                  }
                  addr92:
               }
               while(!(_loc6_ || this))
               {
               }
               continue;
            }
            _loc4_ = Math.floor(Math.random() * param1.length);
            while(_loc3_.indexOf(_loc4_) == -1)
            {
               if(!_loc5_)
               {
                  _loc3_.push(_loc4_);
               }
               §§goto(addr92);
            }
         }
      }
      
      public function §?s§(param1:Object, param2:Object) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(param1.name >= param2.name)
            {
               loop0:
               while(param1.name > param2.name)
               {
                  if(!(_loc4_ || param1))
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     addr80:
                     return -1;
                  }
                  if(_loc4_)
                  {
                     §§goto(addr70);
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               §§push(0);
               if(_loc3_)
               {
                  addr70:
                  return 1;
               }
               if(!_loc3_)
               {
                  return §§pop();
               }
               §§goto(addr80);
            }
            §§goto(addr80);
         }
         §§goto(addr81);
      }
      
      protected function set finalPlayerList(param1:Array) : void
      {
      }
      
      protected function get finalPlayerList() : Array
      {
         return [];
      }
   }
}
