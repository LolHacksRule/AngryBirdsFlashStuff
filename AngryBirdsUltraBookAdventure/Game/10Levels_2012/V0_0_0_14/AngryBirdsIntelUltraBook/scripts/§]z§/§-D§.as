package §]z§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   import flash.events.MouseEvent;
   
   public class §-D§ extends §1!?§
   {
       
      
      private var §]!Q§:InvitePlateAsset;
      
      public function §-D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            this.init();
         }
         while(!_loc1_);
         
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            addChild(this.§]!Q§ = new InvitePlateAsset());
            if(!(_loc2_ && this))
            {
               §§push(this.§]!Q§);
               loop0:
               while(true)
               {
                  §§pop().§3"§.mouseEnabled = false;
                  addr118:
                  loop1:
                  while(true)
                  {
                     §§push(this.§]!Q§);
                     loop2:
                     while(true)
                     {
                        §§pop().addEventListener(MouseEvent.MOUSE_OVER,this.§<o§);
                        loop3:
                        while(true)
                        {
                           §§push(this.§]!Q§);
                           loop4:
                           while(_loc3_)
                           {
                              if(_loc3_)
                              {
                                 §§pop().addEventListener(MouseEvent.MOUSE_OUT,this.§,!D§);
                                 while(!_loc2_)
                                 {
                                    continue loop4;
                                    §§pop().§'%§.gotoAndStop(1);
                                    §§push(this.§]!Q§);
                                    if(!_loc3_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr61);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          return;
                                          addr88:
                                       }
                                       continue loop1;
                                    }
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr88);
         }
         §§goto(addr118);
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(data)
            {
               loop0:
               while(true)
               {
                  §3!F§();
                  while(true)
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     if(_loc1_)
                     {
                        this.§]!Q§.§3"§.text = data.userName || "";
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                  }
                  §§goto(addr62);
               }
            }
            return;
         }
         addr62:
      }
      
      private function §,!D§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§]!Q§.§'%§.gotoAndStop(1);
         }
      }
      
      private function §<o§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§]!Q§.§'%§.gotoAndStop(2);
         }
      }
   }
}
