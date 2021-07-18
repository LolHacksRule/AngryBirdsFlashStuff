package §2!o§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   
   public class §6!6§ extends §`2§
   {
       
      
      private var § ;§:InvitePlateAsset;
      
      public function §6!6§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
            do
            {
               this.init();
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            addChild(this.§ ;§ = new InvitePlateAsset());
            if(_loc2_ || this)
            {
               addr50:
               this.§ ;§.§[m§.mouseEnabled = false;
            }
            return;
         }
         §§goto(addr50);
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(!data)
            {
               if(!(_loc2_ && _loc1_))
               {
                  §§goto(addr78);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr65);
                  }
               }
            }
            addr65:
            while(true)
            {
               §2!l§();
               do
               {
                  this.§ ;§.§[m§.text = data.userName || "";
               }
               while(!_loc1_);
               
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr78:
      }
   }
}
