package §2!o§
{
   import §,l§.§ !Q§;
   import §,l§.§4"7§;
   import §;!d§.§6"L§;
   import com.angrybirds.friendsbar.TournamentChallengePlateAsset;
   import flash.events.MouseEvent;
   
   public class §'"D§ extends §`2§ implements §0!o§
   {
       
      
      private var § ;§:TournamentChallengePlateAsset;
      
      public function §'"D§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         do
         {
            this.init();
         }
         while(_loc1_ && this);
         
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            addChild(this.§ ;§ = new TournamentChallengePlateAsset());
         }
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§!"'§)
            {
               while(true)
               {
                  §2!l§();
                  loop1:
                  while(true)
                  {
                     §§push(this.§ ;§);
                     loop2:
                     while(true)
                     {
                        §§pop().§[m§.text = this.§!"'§.userName || "";
                        addr126:
                        while(!(_loc1_ && _loc2_))
                        {
                           §§push(this.§ ;§);
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      private function §#!W§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new §6"L§(§6"L§.§[!@§,this.data,true));
            while(true)
            {
               §4"7§.§&"5§.§^8§(this.data.userId);
               while(_loc3_ || param1)
               {
                  this.§!"'§.§,!C§ = true;
                  loop2:
                  while(true)
                  {
                     §§push(this.§ ;§);
                     while(true)
                     {
                        §§pop().§+o§.visible = !this.§!"'§.§,!C§;
                        continue loop2;
                        §§goto(addr70);
                     }
                  }
               }
            }
         }
         addr70:
         while(true)
         {
            §§push(this.§ ;§);
            if(!_loc2_)
            {
               §§pop().§;v§.visible = this.§!"'§.§,!C§;
               if(!(_loc2_ && param1))
               {
                  break;
               }
               continue loop2;
            }
            continue loop3;
         }
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §#"2§.setCanSendGift(param1,param2);
         }
      }
      
      public function get §!"'§() : § !Q§
      {
         return data as § !Q§;
      }
   }
}
