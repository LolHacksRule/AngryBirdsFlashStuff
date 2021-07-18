package §5!Y§
{
   import §%i§.§9!r§;
   import §1!0§.§-i§;
   import §2!o§.§?r§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
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
   
   public class § Q§ extends Popup
   {
      
      public static const §@!o§:int = 50;
      
      public static var §?"X§:int = 10;
      
      public static const §<§:String = "Requests sent";
      
      public static const §4$§:String = "Friends selected";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §@!o§ = 50;
         }
         while(true)
         {
            §?"X§ = 10;
            while(_loc1_ || _loc2_)
            {
               §<§ = "Requests sent";
               while(!(_loc2_ && _loc1_))
               {
                  §4$§ = "Friends selected";
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private const §6;§:uint = 10066329;
      
      private const §'!=§:Number = 0.5;
      
      private var § X§:int = 0;
      
      private var §#!]§:Array;
      
      private var §8"O§:§?r§;
      
      private var §]!'§:§9!r§;
      
      protected var §'r§:int;
      
      protected var §?'§:int;
      
      protected var §0^§:int;
      
      public function § Q§(param1:XML, param2:§`_§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               mClip.CheckAnimation.gotoAndStop(0);
               loop1:
               while(true)
               {
                  addr34:
                  loop2:
                  while(true)
                  {
                     mClip.inviteScrollbar.btnScrollUp.addEventListener(MouseEvent.CLICK,this.§?!P§);
                     while(_loc5_)
                     {
                        mClip.inviteScrollbar.btnScrollDown.addEventListener(MouseEvent.CLICK,this.§1!G§);
                        if(_loc6_)
                        {
                           continue;
                        }
                        if(!_loc5_)
                        {
                           break loop2;
                        }
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr34);
         }
         var _loc3_:Class = §?q§.§ q§("SelectAllCheckBox");
         var _loc4_:MovieClip = new _loc3_();
         if(_loc5_)
         {
            this.§]!'§ = new §9!r§(_loc4_,false);
            loop5:
            while(true)
            {
               §§push(this.§]!'§);
               loop6:
               while(true)
               {
                  §§pop().§>R§.addEventListener(Event.CHANGE,this.§3"O§);
                  loop7:
                  while(true)
                  {
                     §§push(this.§]!'§);
                     while(!_loc6_)
                     {
                        §§pop().§>R§.x = 189;
                        loop9:
                        while(true)
                        {
                           §§push(this.§]!'§);
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§pop().§>R§.y = 252;
                           loop10:
                           while(true)
                           {
                              mClip.addChildAt(this.§]!'§.§>R§,mClip.numChildren - 1);
                              addr187:
                              while(true)
                              {
                                 mClip.inviteScrollbar.scrollbarArea.visible = false;
                                 addr175:
                                 while(_loc5_)
                                 {
                                    mClip.inviteScrollbar.scrollbarThumb.visible = false;
                                    loop13:
                                    for(; _loc5_; if(_loc5_ || param2)
                                    {
                                       continue loop9;
                                    })
                                    {
                                       TextField(mClip.searchbar).addEventListener(Event.CHANGE,this.§+!?§);
                                       loop14:
                                       while(true)
                                       {
                                          TextField(mClip.searchbar).addEventListener(FocusEvent.FOCUS_IN,this.§""&§);
                                          addr120:
                                          while(true)
                                          {
                                             if(!(_loc6_ && param2))
                                             {
                                                continue loop13;
                                             }
                                             continue loop14;
                                          }
                                          continue loop7;
                                       }
                                    }
                                    continue loop5;
                                 }
                                 continue loop10;
                              }
                           }
                           if(!(_loc6_ && param1))
                           {
                              if(!(_loc6_ && param2))
                              {
                                 this.§8!5§();
                                 do
                                 {
                                    if(!_loc6_)
                                    {
                                       if(_loc5_)
                                       {
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr187);
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr120);
                                 }
                                 while(this.checkIfBatchInProgress(), do
                                 {
                                    this.fetchFriendData();
                                 }
                                 while(_loc6_);
                                 , !(_loc5_ || param2));
                                 
                                 return;
                                 addr85:
                              }
                              continue loop7;
                           }
                        }
                     }
                     continue loop6;
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function get §;f§() : int
      {
         return this.§0^§;
      }
      
      public function set §;f§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0^§ = param1;
         }
      }
      
      private function §?!P§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§8"O§.scroll(-4);
            do
            {
               this.§?!t§();
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      private function §1!G§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§8"O§.scroll(4);
         }
         do
         {
            this.§?!t§();
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      private function §?!t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§8"O§);
            loop0:
            while(true)
            {
               §§push(1);
               addr124:
               while(true)
               {
                  if(!§§pop().§0"Q§(§§pop()))
                  {
                     this.§["T§(mClip.inviteScrollbar.btnScrollDown,false);
                     do
                     {
                        if(_loc2_ || _loc2_)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              while(true)
                              {
                                 continue loop0;
                              }
                              addr120:
                           }
                           else
                           {
                              addr126:
                              while(true)
                              {
                                 this.§["T§(mClip.inviteScrollbar.btnScrollDown,true);
                              }
                              addr126:
                           }
                        }
                        while(true)
                        {
                           continue loop0;
                        }
                     }
                     while(!(_loc2_ || _loc1_));
                     
                     addr20:
                     return;
                  }
                  §§goto(addr126);
               }
            }
         }
         §§goto(addr120);
      }
      
      private function §["T§(param1:SimpleButton, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(!param2)
            {
               if(!param1.mouseEnabled)
               {
                  loop0:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        param1.mouseEnabled = true;
                        while(_loc3_ || _loc3_)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              if(_loc3_ || param2)
                              {
                                 setTint(param1,0,0);
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 continue;
                              }
                              addr106:
                              addr106:
                              param1.mouseEnabled = false;
                           }
                           setTint(param1,this.§6;§,this.§'!=§);
                           break;
                        }
                        break;
                     }
                     addr103:
                     if(param1.mouseEnabled)
                     {
                        §§goto(addr106);
                     }
                     break;
                     §§goto(addr106);
                  }
               }
               return;
            }
            §§goto(addr103);
         }
         §§goto(addr106);
      }
      
      protected function checkIfBatchInProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§0^§ <= 0)
            {
               mClip.btnInviteMore.visible = false;
               while(_loc2_)
               {
                  if(!_loc2_)
                  {
                     mClip.btnInviteMore.visible = true;
                  }
                  else
                  {
                     addr86:
                  }
                  mClip.btnInvite.visible = true;
                  if(!(_loc1_ && _loc2_))
                  {
                     if(!_loc2_)
                     {
                        addr81:
                     }
                     return;
                  }
               }
               mClip.btnInvite.visible = false;
               §§goto(addr81);
            }
         }
         §§goto(addr86);
      }
      
      private function §""&§(param1:FocusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(TextField(mClip.searchbar).text == "Search...")
            {
               if(_loc3_ || _loc2_)
               {
                  addr43:
                  TextField(mClip.searchbar).text = "";
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      private function §+!?§(param1:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:Object = null;
         var _loc2_:String = TextField(mClip.searchbar).text;
         if(!(_loc8_ && _loc2_))
         {
            if(_loc2_ == "")
            {
               if(_loc7_)
               {
                  this.§;F§(this.finalPlayerList);
               }
            }
         }
         var _loc3_:Array = [];
         for each(_loc4_ in this.finalPlayerList)
         {
            if(_loc4_.name.toLowerCase().indexOf(_loc2_.toLowerCase()) != -1)
            {
               if(_loc7_)
               {
                  _loc3_.push(_loc4_);
               }
            }
         }
         if(!_loc8_)
         {
            this.§;F§(_loc3_);
         }
      }
      
      private function §3"O§(param1:Event) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         for each(_loc2_ in this.§#!]§)
         {
            if(_loc9_)
            {
               var _loc6_:int = 0;
               if(!(_loc8_ && _loc3_))
               {
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc9_)
                     {
                        if(!_loc3_)
                        {
                           continue;
                        }
                        if(!_loc9_)
                        {
                           continue;
                        }
                     }
                     _loc3_.selected = this.§]!'§.selected;
                  }
               }
            }
         }
         if(_loc9_)
         {
            this.§3!<§();
         }
         do
         {
            this.§8"O§.§->§();
         }
         while(!_loc9_);
         
      }
      
      protected function §3!<§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         if(_loc5_)
         {
            this.§8"O§.§->§();
         }
         var _loc1_:int = 0;
         for each(_loc2_ in this.finalPlayerList)
         {
            if(_loc5_ || _loc2_)
            {
               if(_loc2_.selected)
               {
                  if(_loc5_ || this)
                  {
                     _loc1_++;
                  }
               }
            }
         }
         if(!(_loc6_ && this))
         {
            §§push(_loc1_);
            while(true)
            {
               §§push(0);
               addr206:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     this.setSendButtonsVisibility(true);
                     loop3:
                     while(true)
                     {
                        if(!(_loc5_ || this))
                        {
                           addr207:
                           while(true)
                           {
                              this.setSendButtonsVisibility(false);
                              addr210:
                              while(true)
                              {
                              }
                           }
                           addr207:
                        }
                        while(true)
                        {
                           this.§ X§ = _loc1_;
                           continue loop3;
                           §§goto(addr210);
                        }
                     }
                  }
                  §§goto(addr207);
               }
               while(true)
               {
                  §§push(this.§'r§);
                  if(_loc6_ && this)
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
                           this.showRequestsCount(this.§'r§,this.§?'§);
                        }
                        loop8:
                        while(_loc5_ || this)
                        {
                           while(true)
                           {
                              addr73:
                              addr112:
                              while(true)
                              {
                                 this.§?!t§();
                                 if(_loc6_ && _loc2_)
                                 {
                                    break;
                                 }
                                 if(_loc6_)
                                 {
                                    continue loop8;
                                 }
                                 if(!(_loc6_ && this))
                                 {
                                    return;
                                 }
                                 §§goto(addr152);
                              }
                              while(_loc5_)
                              {
                                 §§goto(addr73);
                              }
                              §§goto(addr167);
                           }
                        }
                        §§goto(addr210);
                     }
                     else
                     {
                        this.showFriendsCount(_loc1_,this.finalPlayerList.length);
                     }
                     §§goto(addr112);
                  }
                  else
                  {
                     §§goto(addr206);
                  }
                  §§goto(addr154);
               }
            }
         }
         §§goto(addr144);
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
      
      private function §8!5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§8"O§ = new §?r§(600,200,null,§-i§,20,20);
            loop0:
            while(true)
            {
               §§push(this.§8"O§);
               loop1:
               while(true)
               {
                  §§pop().scrollerSprite.addEventListener(MouseEvent.CLICK,this.§ !i§);
                  addr109:
                  while(_loc2_)
                  {
                     §§push(this.§8"O§);
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr59);
      }
      
      private function §;F§(param1:Array) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§#!]§ = [];
         }
         var _loc2_:* = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(§§pop() >= param1.length)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     this.§8"O§.data = this.§#!]§;
                  }
                  for(; !(_loc4_ && this); this.§3!<§(),if(_loc3_)
                  {
                     return;
                  })
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        continue;
                     }
                  }
                  continue;
               }
               this.§#!]§.push([param1[_loc2_],param1[_loc2_ + 1]]);
               §§push(_loc2_);
               if(!_loc4_)
               {
                  §§push(int(§§pop() + 2));
               }
            }
            _loc2_ = §§pop();
         }
      }
      
      private function § !i§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3!<§();
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            mClip.WaitingForReply.visible = true;
         }
         var _loc1_:URLRequest = §%"S§.§!C§.§`"§.§3"B§(this.facebookGraphCall);
         var _loc2_:URLLoader = new URLLoader(_loc1_);
         if(!(_loc3_ && this))
         {
            _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
            do
            {
               _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:Object = null;
         if(_loc7_)
         {
            mClip.WaitingForReply.visible = false;
         }
         var _loc2_:Object = JSON.parse(param1.target.data);
         var _loc3_:Array = _loc2_.data;
         for each(_loc4_ in _loc3_)
         {
            _loc4_.selected = false;
         }
         if(!(_loc8_ && _loc3_))
         {
            this.§#I§(_loc3_);
         }
      }
      
      protected function §#I§(param1:Array, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.filterFriendsToShow(param1);
         }
         do
         {
            this.§?'§ = Math.max(this.finalPlayerList.length,this.§?'§);
            do
            {
               this.§;F§(this.finalPlayerList);
               do
               {
                  §§push(this.§]!'§);
                  if(!_loc3_)
                  {
                     if(§§pop().selected)
                     {
                        §§goto(addr25);
                     }
                     if(_loc3_)
                     {
                        continue;
                     }
                     §§push(this.§]!'§);
                  }
                  §§pop().§>R§.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
               }
               while(_loc3_ && param1);
               
            }
            while(!(_loc4_ || this));
            
         }
         while(_loc3_ && param2);
         
         addr25:
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
      
      private function §`!v§(param1:Array, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:int = 0;
         var _loc3_:Array = [];
         if(!(_loc5_ && this))
         {
            param2 = Math.min(param1.length,param2);
         }
         loop0:
         while(true)
         {
            if(_loc3_.length >= param2)
            {
               if(!_loc5_)
               {
                  if(!(_loc5_ && param1))
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     param1[_loc4_].selected = true;
                     addr84:
                     while(true)
                     {
                        _loc3_.push(_loc4_);
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  if(!_loc5_)
                  {
                     if(_loc6_)
                     {
                        break;
                     }
                     addr100:
                     while(_loc3_.indexOf(_loc4_) == -1)
                     {
                     }
                     continue loop0;
                  }
                  §§goto(addr84);
               }
               continue;
            }
            _loc4_ = Math.floor(Math.random() * param1.length);
            §§goto(addr100);
         }
      }
      
      public function §&"#§(param1:Object, param2:Object) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param1.name >= param2.name)
            {
               while(param1.name > param2.name)
               {
                  if(_loc4_ || param2)
                  {
                     if(!_loc3_)
                     {
                        addr63:
                        §§push(1);
                        if(_loc4_ || this)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr84:
                        return -1;
                     }
                     return §§pop();
                  }
                  if(!(_loc3_ && param2))
                  {
                     addr78:
                     break;
                  }
               }
               §§push(0);
               if(_loc4_)
               {
                  return §§pop();
               }
               §§goto(addr63);
            }
            §§goto(addr84);
         }
         §§goto(addr78);
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
