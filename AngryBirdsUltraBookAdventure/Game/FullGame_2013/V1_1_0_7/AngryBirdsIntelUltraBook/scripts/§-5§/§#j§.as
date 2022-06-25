package §-5§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   import flash.events.MouseEvent;
   
   public class §#j§ extends § !<§
   {
       
      
      private var §=1§:InvitePlateAsset;
      
      public function §#j§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         do
         {
            this.init();
         }
         while(_loc2_ && _loc1_);
         
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            addChild(this.§=1§ = new InvitePlateAsset());
            if(_loc3_)
            {
               §§push(this.§=1§);
               while(true)
               {
                  §§pop().§>!x§.mouseEnabled = false;
               }
               addr115:
               addr31:
            }
            loop0:
            while(true)
            {
               §§push(this.§=1§);
               loop1:
               while(!(_loc2_ && this))
               {
                  §§pop().addEventListener(MouseEvent.MOUSE_OVER,this.§ G§);
                  loop2:
                  while(!(_loc2_ && _loc1_))
                  {
                     §§push(this.§=1§);
                     loop3:
                     while(_loc3_)
                     {
                        §§pop().addEventListener(MouseEvent.MOUSE_OUT,this.§"v§);
                        while(!_loc2_)
                        {
                           continue loop3;
                           §§pop().§8%§.gotoAndStop(1);
                           §§push(this.§=1§);
                           if(!(_loc3_ || this))
                           {
                              continue loop3;
                           }
                           §§goto(addr56);
                           if(_loc3_ || _loc2_)
                           {
                              return;
                           }
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
               §§goto(addr115);
            }
         }
         §§goto(addr31);
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(!data)
            {
               if(!_loc2_)
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr65);
               }
            }
            addr65:
            §§goto(addr64);
         }
         addr64:
         while(true)
         {
            §&!^§();
            do
            {
               this.§=1§.§>!x§.text = data.userName || "";
            }
            while(!_loc1_);
            
            if(_loc1_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      private function §"v§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§=1§.§8%§.gotoAndStop(1);
         }
      }
      
      private function § G§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=1§.§8%§.gotoAndStop(2);
         }
      }
   }
}
