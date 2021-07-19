package §1"a§
{
   import §]Q§.§&#P§;
   import com.rovio.assets.§5_§;
   import flash.events.MouseEvent;
   
   public class §^!t§ extends §8!N§
   {
       
      
      public function §^!t§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.init();
         }
         do
         {
            super();
         }
         while(_loc2_ && _loc1_);
         
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            addChild(§5!-§ = new §5_§.§`"G§("com.AngryBirds.friendsbar.InvitePlateAsset")());
            if(!(_loc3_ && _loc1_))
            {
               §5!-§.txtName.mouseEnabled = false;
               if(!(_loc3_ && _loc3_))
               {
                  §5!-§.tabEnabled = §5!-§.tabChildren = false;
                  if(_loc2_ || _loc3_)
                  {
                  }
               }
               §§goto(addr95);
            }
            addEventListener(MouseEvent.CLICK,this.§[#Q§);
         }
         addr95:
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.update();
         }
         loop0:
         while(data)
         {
            do
            {
               §<"9§();
               while(true)
               {
                  if(_loc1_)
                  {
                     continue loop0;
                  }
                  §§push(§§findproperty(§^"d§));
                  if(_loc2_)
                  {
                     §§push(data.userName);
                     if(_loc2_)
                     {
                        §§pop().§^"d§(§§pop() || "");
                        if(_loc2_ || _loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                  }
                  §§goto(addr50);
               }
               §§goto(addr60);
               continue loop0;
            }
            while(!_loc2_);
            
            if(_loc2_ || _loc2_)
            {
               return;
            }
            break;
         }
      }
      
      private function §[#Q§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§5!-§.visible)
            {
               if(!_loc3_)
               {
                  addr43:
                  dispatchEvent(new §&#P§(§&#P§.§,"=§,true));
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      override protected function get removeAnimationClassName() : String
      {
         return "com.angrybirds.friendsbar.AnimationInviteSent";
      }
   }
}
