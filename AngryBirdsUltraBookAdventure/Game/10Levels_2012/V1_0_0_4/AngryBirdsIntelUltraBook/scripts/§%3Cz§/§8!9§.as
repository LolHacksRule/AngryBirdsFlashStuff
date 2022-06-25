package §<z§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   import flash.events.MouseEvent;
   
   public class §8!9§ extends §1S§
   {
       
      
      private var §"v§:InvitePlateAsset;
      
      public function §8!9§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
         do
         {
            this.init();
         }
         while(_loc2_);
         
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            addChild(this.§"v§ = new InvitePlateAsset());
            if(_loc3_ || _loc3_)
            {
               §§push(this.§"v§);
               loop0:
               while(true)
               {
                  §§pop().§'!a§.mouseEnabled = false;
                  addr113:
                  loop1:
                  while(true)
                  {
                     §§push(this.§"v§);
                     loop2:
                     while(_loc3_)
                     {
                        §§pop().addEventListener(MouseEvent.MOUSE_OVER,this.§<!N§);
                        loop3:
                        while(_loc3_)
                        {
                           §§push(this.§"v§);
                           loop4:
                           while(_loc3_)
                           {
                              §§pop().addEventListener(MouseEvent.MOUSE_OUT,this.§1!A§);
                              while(!_loc2_)
                              {
                                 §§push(this.§"v§);
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue loop4;
                                 }
                                 §§pop().§>!S§.gotoAndStop(1);
                                 if(!_loc3_)
                                 {
                                    §§goto(addr92);
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr113);
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(!data)
            {
               if(_loc2_)
               {
                  return;
               }
               addr75:
               while(true)
               {
               }
               addr75:
            }
            while(true)
            {
               §3W§();
               while(!_loc1_)
               {
                  this.§"v§.§'!a§.text = data.userName || "";
                  if(!_loc1_)
                  {
                     return;
                  }
               }
               §§goto(addr75);
            }
         }
         §§goto(addr75);
      }
      
      private function §1!A§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"v§.§>!S§.gotoAndStop(1);
         }
      }
      
      private function §<!N§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§"v§.§>!S§.gotoAndStop(2);
         }
      }
   }
}
