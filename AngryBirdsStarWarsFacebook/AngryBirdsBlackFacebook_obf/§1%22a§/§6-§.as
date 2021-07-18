package §1"a§
{
   import §]Q§.§&#P§;
   import com.rovio.assets.§5_§;
   import flash.events.MouseEvent;
   
   public class §6-§ extends §8!N§
   {
       
      
      public function §6-§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.init();
            do
            {
               super();
            }
            while(_loc2_);
            
         }
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            addChild(§5!-§ = new §5_§.§`"G§("com.angrybirds.friendsbar.ChallengePlateAsset")());
            if(!(_loc2_ && _loc3_))
            {
               §5!-§.txtName.mouseEnabled = false;
               if(_loc3_)
               {
                  §5!-§.tabEnabled = §5!-§.tabChildren = false;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr85:
                     addEventListener(MouseEvent.CLICK,this.§["O§);
                  }
               }
               return;
            }
         }
         §§goto(addr85);
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(data)
            {
               do
               {
                  §<"9§();
                  while(true)
                  {
                     §§push(§§findproperty(§^"d§));
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(data.userName);
                        if(_loc1_)
                        {
                           §§pop().§^"d§(§§pop() || "");
                           if(_loc1_)
                           {
                              break;
                           }
                           continue;
                        }
                     }
                     §§goto(addr54);
                  }
               }
               while(_loc2_);
               
               if(_loc1_)
               {
                  return;
                  addr73:
               }
            }
            return;
         }
         §§goto(addr73);
      }
      
      private function §["O§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            dispatchEvent(new §&#P§(§&#P§.CHALLENGE,true));
         }
      }
      
      override protected function get removeAnimationClassName() : String
      {
         return "com.angrybirds.friendsbar.AnimationChallengeSent";
      }
   }
}
