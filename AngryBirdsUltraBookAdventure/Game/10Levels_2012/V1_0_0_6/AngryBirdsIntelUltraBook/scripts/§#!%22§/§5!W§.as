package §#!"§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   import flash.events.MouseEvent;
   
   public class §5!W§ extends §+M§
   {
       
      
      private var §0!p§:InvitePlateAsset;
      
      public function §5!W§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            addChild(this.§0!p§ = new InvitePlateAsset());
            if(_loc2_ || _loc3_)
            {
               §§push(this.§0!p§);
               loop0:
               while(true)
               {
                  §§pop().§ F§.mouseEnabled = false;
                  addr122:
                  loop6:
                  while(true)
                  {
                     §§push(this.§0!p§);
                     addr111:
                     while(true)
                     {
                        §§pop().addEventListener(MouseEvent.MOUSE_OVER,this.§^!l§);
                        loop3:
                        while(true)
                        {
                           §§push(this.§0!p§);
                           addr81:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              §§pop().addEventListener(MouseEvent.MOUSE_OUT,this.§ r§);
                              while(true)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop6;
                                 }
                                 continue loop3;
                                 §§goto(addr83);
                              }
                              addr83:
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this.§0!p§);
               if(!(_loc3_ && _loc2_))
               {
                  if(_loc2_)
                  {
                     §§pop().§4v§.gotoAndStop(1);
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr111);
               }
               §§goto(addr81);
            }
            return;
         }
         §§goto(addr122);
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(!data)
            {
               if(_loc2_ || this)
               {
                  return;
               }
               addr80:
               while(true)
               {
               }
               addr80:
            }
            while(true)
            {
               §!R§();
               while(!_loc1_)
               {
                  this.§0!p§.§ F§.text = data.userName || "";
                  if(!_loc1_)
                  {
                     return;
                  }
               }
               §§goto(addr80);
            }
         }
         §§goto(addr80);
      }
      
      private function § r§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§0!p§.§4v§.gotoAndStop(1);
         }
      }
      
      private function §^!l§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§0!p§.§4v§.gotoAndStop(2);
         }
      }
   }
}
