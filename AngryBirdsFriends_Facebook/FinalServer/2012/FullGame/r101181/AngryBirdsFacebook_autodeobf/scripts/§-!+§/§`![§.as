package §-!+§
{
   import §,"2§.§;6§;
   import §]!>§.§,;§;
   import §]!>§.§0!!§;
   import com.angrybirds.friendsbar.TournamentChallengePlateAsset;
   import flash.events.MouseEvent;
   
   public class §`![§ extends §=G§ implements §1C§
   {
       
      
      private var §,@§:TournamentChallengePlateAsset;
      
      public function §`![§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
         do
         {
            this.init();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            addChild(this.§,@§ = new TournamentChallengePlateAsset());
         }
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§1E§)
            {
               loop0:
               while(true)
               {
                  §8""§();
                  loop1:
                  while(true)
                  {
                     §§push(this.§,@§);
                     loop2:
                     while(true)
                     {
                        §§pop().§'J§.text = this.§1E§.userName || "";
                        loop3:
                        while(_loc1_ || _loc1_)
                        {
                           if(!_loc2_)
                           {
                              §§push(this.§,@§);
                              while(true)
                              {
                                 §§pop().§==§.visible = !this.§1E§.§^!Z§;
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§,@§);
                                    loop6:
                                    while(true)
                                    {
                                       §§pop().§#!,§.visible = this.§1E§.§^!Z§;
                                       loop7:
                                       while(!(_loc2_ && _loc2_))
                                       {
                                          §`!§();
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop6;
                                             }
                                             continue loop3;
                                             addr30:
                                             if(!_loc1_)
                                             {
                                                break;
                                             }
                                             §§pop().§==§.addEventListener(MouseEvent.CLICK,this.§1;§,false,0,true);
                                             if(_loc1_)
                                             {
                                                if(!(_loc2_ && this))
                                                {
                                                   if(_loc1_ || this)
                                                   {
                                                      return;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop7;
                                             }
                                          }
                                          continue loop2;
                                       }
                                       continue loop5;
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
            return;
         }
         §§goto(addr141);
      }
      
      private function §1;§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            dispatchEvent(new §;6§(§;6§.§<!e§,this.data,true));
            loop0:
            while(true)
            {
               §0!!§.§;"§.§=[§(this.data.userId);
               loop1:
               while(true)
               {
                  this.§1E§.§^!Z§ = true;
                  while(!_loc3_)
                  {
                     §§push(this.§,@§);
                     loop3:
                     while(true)
                     {
                        §§pop().§==§.visible = !this.§1E§.§^!Z§;
                        addr84:
                        while(true)
                        {
                           §§push(this.§,@§);
                           if(_loc2_ || _loc2_)
                           {
                              continue;
                           }
                           continue loop3;
                        }
                        §§goto(addr64);
                     }
                     if(!(_loc3_ && param1))
                     {
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                        addr64:
                     }
                     continue;
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr84);
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §6m§.setCanSendGift(param1,param2);
         }
      }
      
      public function get §1E§() : §,;§
      {
         return data as §,;§;
      }
   }
}
