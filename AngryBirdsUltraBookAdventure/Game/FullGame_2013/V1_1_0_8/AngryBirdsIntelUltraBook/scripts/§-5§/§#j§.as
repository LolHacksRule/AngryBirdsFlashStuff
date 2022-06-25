package §-5§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   import flash.events.MouseEvent;
   
   public class §#j§ extends § !<§
   {
       
      
      private var §=1§:InvitePlateAsset;
      
      public function §#j§()
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
         if(!(_loc3_ && _loc1_))
         {
            addChild(this.§=1§ = new InvitePlateAsset());
            if(_loc2_)
            {
               §§push(this.§=1§);
               while(true)
               {
                  §§pop().§>!x§.mouseEnabled = false;
                  addr107:
                  addr55:
                  while(true)
                  {
                     §§push(this.§=1§);
                     addr96:
                     while(true)
                     {
                        §§pop().addEventListener(MouseEvent.MOUSE_OVER,this.§ G§);
                     }
                  }
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  §§pop().§8%§.gotoAndStop(1);
                  if(_loc2_)
                  {
                     if(!_loc3_)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr107);
                        }
                        return;
                        addr81:
                     }
                     while(true)
                     {
                        §§push(this.§=1§);
                        loop4:
                        while(_loc2_)
                        {
                           §§pop().addEventListener(MouseEvent.MOUSE_OUT,this.§"v§);
                           while(true)
                           {
                              §§push(this.§=1§);
                              if(!_loc2_)
                              {
                                 continue loop4;
                              }
                              §§goto(addr55);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr81);
                     addr101:
                  }
                  §§goto(addr92);
               }
            }
            §§goto(addr101);
         }
         §§goto(addr81);
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(data)
            {
               loop0:
               while(true)
               {
                  §&!^§();
                  while(_loc2_ || this)
                  {
                     this.§=1§.§>!x§.text = data.userName || "";
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     if(!(_loc1_ && this))
                     {
                        return;
                     }
                  }
                  addr90:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr90);
      }
      
      private function §"v§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§=1§.§8%§.gotoAndStop(1);
         }
      }
      
      private function § G§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§=1§.§8%§.gotoAndStop(2);
         }
      }
   }
}
