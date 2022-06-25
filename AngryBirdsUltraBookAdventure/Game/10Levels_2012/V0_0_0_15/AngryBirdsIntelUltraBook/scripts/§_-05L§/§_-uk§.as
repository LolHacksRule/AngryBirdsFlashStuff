package §_-05L§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   import flash.events.MouseEvent;
   
   public class §_-uk§ extends §_-Po§
   {
       
      
      private var §_-nQ§:InvitePlateAsset;
      
      public function §_-uk§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         do
         {
            this.init();
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            addChild(this.§_-nQ§ = new InvitePlateAsset());
            if(_loc3_)
            {
               §§push(this.§_-nQ§);
               loop0:
               while(true)
               {
                  §§pop().§_-AQ§.mouseEnabled = false;
                  loop1:
                  while(true)
                  {
                     §§push(this.§_-nQ§);
                     while(true)
                     {
                        §§pop().addEventListener(MouseEvent.MOUSE_OVER,this.§_-te§);
                        addr110:
                        while(!_loc2_)
                        {
                        }
                        addr89:
                        continue loop1;
                        while(_loc3_ || _loc1_)
                        {
                           §§pop().addEventListener(MouseEvent.MOUSE_OUT,this.§_-35§);
                           while(true)
                           {
                              §§push(this.§_-nQ§);
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr89);
            }
         }
         §§goto(addr75);
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!data)
            {
               if(_loc1_)
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr50);
               }
            }
            addr50:
            §§goto(addr49);
         }
         addr49:
         while(true)
         {
            §_-0-m§();
            do
            {
               this.§_-nQ§.§_-AQ§.text = data.userName || "";
            }
            while(!_loc1_);
            
            if(_loc1_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      private function §_-35§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§_-nQ§.§_-VK§.gotoAndStop(1);
         }
      }
      
      private function §_-te§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-nQ§.§_-VK§.gotoAndStop(2);
         }
      }
   }
}
